package spi.runners

import chisel3._
import chisel3.util._

object SpiSlaveRunner extends App {
    if (args.length >= 1) {
        for(i <- 0 until args.length) {
            args(i).toLowerCase() match {
                case "slave" =>
                        chisel3.Driver.execute(args, () => new spi.SpiSlaveReceiver())
                        chisel3.Driver.execute(args, () => new spi.debugger.SpiSlaveReceiverLedDebugger())
                        chisel3.Driver.execute(args, () => new spi.debugger.SpiSlaveReceiverLedDebugger2())
                case "controller" => 
                        chisel3.Driver.execute(args, () => new spi.SpiController())
                case _ => ()
            }
        }
    } 
}