#include <stdio.h>
#include <unistd.h>
#include <signal.h>
#include <stdint.h>
#include <stdbool.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <unistd.h>
#include <inttypes.h>

#define AXI_BASE ( 0xC0000000)
#define AXI_BASE_SPAN ( 0xFC000000 - 0xC0000000 )

#define MY_IP_BASE ( /* Base Address */ )

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

    uint64_t * core_addr = (uint64_t *)(virtual_base + (unsigned long)MY_IP_BASE);

    uint64_t tmp = core_addr[0];
    printf("Parition 1: %" PRIu64 "x", tmp & 0xffffffff);
    printf("Parition 2: %" PRIu64 "x", tmp >> 32);
    tmp = core_addr[1];
    printf("Parition 3: %" PRIu64 "x", tmp & 0xffffffff);
    printf("Parition 4: %" PRIu64 "x", tmp >> 32);

    // clean up our memory mapping and exit
    if( munmap( virtual_base, AXI_BASE_SPAN ) != 0 ) {
        printf( "ERROR: munmap() failed...\n" );
        close( fd );
        return( 1 );
    }

    close( fd );
    return( 0 );
}