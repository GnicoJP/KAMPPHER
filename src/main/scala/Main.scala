package kamppher

import scala.collection.immutable.HashMap

import chisel3._
import chisel3.util._

object KamppherRunner extends App {
    if (args.length >= 1) {
        val commands = HashMap(("spimaster", 0), ("spislave", 1), ("spicontroller", 2), ("controller", 3))
        var newargs = args.filterNot(x => commands.contains(x))
        args.find(x => commands.contains(x.toLowerCase())).map(x => commands(x.toLowerCase())) match {
            case Some(0) => 
                chisel3.Driver.execute(newargs, () => new spi.SpiMasterReceiver())
            case Some(1) =>
                chisel3.Driver.execute(newargs, () => new spi.SpiSlaveReceiver())
                chisel3.Driver.execute(newargs, () => new spi.debugger.SpiSlaveReceiverLedDebugger())
                chisel3.Driver.execute(newargs, () => new spi.debugger.SpiSlaveReceiverLedDebugger2())
            case Some(2) =>
                chisel3.Driver.execute(newargs, () => new spi.SpiController())
            case Some(3) =>
                chisel3.Driver.execute(newargs, () => new mbr.MBRProcessor())
                chisel3.Driver.execute(newargs, () => new mbr.WritingAddressVerifier())
                chisel3.Driver.execute(newargs, () => new mbr.AddressConverter())
            case _ =>
                ()
        }
    } 
}