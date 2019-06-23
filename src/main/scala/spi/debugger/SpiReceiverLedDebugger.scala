package spi.debugger

import chisel3._
import chisel3.util._
import chisel3.experimental.withClock

class SpiReceiverLedDebugger extends Module {
    val io = IO(new Bundle{
        val CommandReadFinished = Input(Bool())
        val ArgumentReadFinished = Input(Bool())
        val ReadSuccess = Input(Bool())
        val Command = Input(UInt(6.W))
        val CommandArgument = Input(UInt(32.W))

        val CMD0 = Output(Bool())
        val CMD8 = Output(Bool())
        val ACMD41 = Output(Bool())
        val CMD16 = Output(Bool())
        val CMD55 = Output(Bool())
    })

    val after_apcommand = RegInit(false.B)
    val prevReadSuccess = RegNext(io.ReadSuccess)

    val cmd0 = RegInit(false.B)  
    val cmd8 = RegInit(false.B)
    val acmd41 = RegInit(false.B)
    val cmd16 = RegInit(false.B)

    io.CMD0 := cmd0
    io.CMD8 := cmd8
    io.ACMD41 := acmd41
    io.CMD16 := cmd16
    io.CMD55 := after_apcommand

    when(io.ReadSuccess =/= prevReadSuccess) {
        when(after_apcommand) {
            when(io.Command === 41.U) {
                acmd41 := true.B
            }
            after_apcommand := false.B
        }.otherwise {
            switch(io.Command) {
                is(0.U){
                    cmd0 := true.B
                }
                is(8.U) {
                    cmd8 := true.B
                }
                is(55.U) {
                    after_apcommand := true.B
                }
                is(16.U) {
                    cmd16 := true.B
                }
            }
        }
    }
}