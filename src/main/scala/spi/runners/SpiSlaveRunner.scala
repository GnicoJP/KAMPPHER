package spi.runners

import chisel3._
import chisel3.util._

object SpiSlaveRunner extends App {
    chisel3.Driver.execute(args, () => new spi.SpiSlaveReceiver())
    chisel3.Driver.execute(args, () => new spi.debugger.SpiBufferAvalonDebugger())
    chisel3.Driver.execute(args, () => new spi.debugger.SpiSlaveReceiverLedDebugger())
    chisel3.Driver.execute(args, () => new spi.debugger.SpiSlaveReceiverLedDebugger2())
}