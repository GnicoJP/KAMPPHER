#include <stdio.h>
#include <unistd.h>
#include <signal.h>
#include <stdint.h>
#include <stdbool.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <unistd.h>

#define AXI_BASE ( 0xC0000000)
#define AXI_BASE_SPAN ( 0xFC000000 - 0xC0000000 )

#define MY_IP_BASE ( /* Base Address */ )

#define COUNT 64

volatile sig_atomic_t isContinue = 0;

void signal_handle(int sig) {
  isContinue = 1;
}

void binout8(uint32_t v) {
  uint32_t mask = 1 << 7;
  do
      putchar(v & mask? '1' : '0');
  while (mask >>= 1);
}

void output(uint64_t value, uint64_t * counter) {
    unsigned int data;
    unsigned int dir = value & 0xff;
    for(int i = 1; i < 8; ++i) {
        data = (value >> (8*i)) & 0xff;
        printf(dir ? "MISO|%llu|" : "MOSI|%llu|", *counter);
        binout8(data);
        printf("\n");
        (*counter)++;
    }
}

int main() {
    void *virtual_base;
    int32_t fd;

    // map the address space for the LED registers into user space so we can interact with them.
    // we'll actually map in the entire CSR span of the HPS since we want to access various registers within that span

    if( ( fd = open( "/dev/mem", ( O_RDWR | O_SYNC ) ) ) == -1 ) {
        printf( "ERROR: could not open \"/dev/mem\"...\n" );
        return( 1 );
    }

    virtual_base = mmap( NULL, AXI_BASE_SPAN, ( PROT_READ | PROT_WRITE ), MAP_SHARED, fd, AXI_BASE );

    if( virtual_base == MAP_FAILED ) {
        printf( "ERROR: mmap() failed...\n" );
        close( fd );
        return( 1 );
    }

    signal(SIGINT, signal_handle);

    uint64_t * core_addr = (uint64_t *)(virtual_base + (unsigned long)MY_IP_BASE);
    uint64_t got_version = 1;
    uint64_t version = 1;
    uint64_t counter = 0;
    while( !isContinue ) {
        got_version = *core_addr;
        if(version != got_version) {
            if(version > got_version) {
                for(int i = version; i < COUNT; ++i)
                    output(*(core_addr + i), &counter);
                version = 1;
            }
            for(int i = version; i < got_version; ++i)
                output(*(core_addr + i), &counter);
            version = got_version;
        } else {
            fflush(stdout);
        }
    } // while
    
    // clean up our memory mapping and exit
    if( munmap( virtual_base, AXI_BASE_SPAN ) != 0 ) {
        printf( "ERROR: munmap() failed...\n" );
        close( fd );
        return( 1 );
    }

    close( fd );
    return( 0 );
}