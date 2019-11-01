// See README.md for license details.
lazy val compileSpiSlave = inputKey[Unit]("Compile Slave")
lazy val compileSpiController = inputKey[Unit]("Compile Controller")
lazy val compileSpiBuffer = inputKey[Unit]("Compile Buffer")

def scalacOptionsVersion(scalaVersion: String): Seq[String] = {
  Seq() ++ {
    // If we're building with Scala > 2.11, enable the compile option
    //  switch to support our anonymous Bundle definitions:
    //  https://github.com/scala/bug/issues/10047
    CrossVersion.partialVersion(scalaVersion) match {
      case Some((2, scalaMajor: Long)) if scalaMajor < 12 => Seq()
      case _ => Seq("-Xsource:2.11")
    }
  }
}

def javacOptionsVersion(scalaVersion: String): Seq[String] = {
  Seq() ++ {
    // Scala 2.12 requires Java 8. We continue to generate
    //  Java 7 compatible code for Scala 2.11
    //  for compatibility with old clients.
    CrossVersion.partialVersion(scalaVersion) match {
      case Some((2, scalaMajor: Long)) if scalaMajor < 12 =>
        Seq("-source", "1.7", "-target", "1.7")
      case _ =>
        Seq("-source", "1.8", "-target", "1.8")
    }
  }
}

name := "SPI SD For FPGA"

version := "0.0.1"

scalaVersion := "2.12.10"

crossScalaVersions := Seq("2.11.12", "2.12.10")

resolvers ++= Seq(
  Resolver.sonatypeRepo("snapshots"),
  Resolver.sonatypeRepo("releases")
)

// Provide a managed dependency on X if -DXVersion="" is supplied on the command line.
val defaultVersions = Map(
  "chisel3" -> "3.2.+",
  "chisel-iotesters" -> "1.3.+",
  )

libraryDependencies ++= Seq("chisel3","chisel-iotesters").map {
  dep: String => "edu.berkeley.cs" %% dep % sys.props.getOrElse(dep + "Version", defaultVersions(dep)) }

scalacOptions ++= scalacOptionsVersion(scalaVersion.value)

javacOptions ++= javacOptionsVersion(scalaVersion.value)

compileSpiSlave := { 
  (run in Compile).toTask(" Slave --target-dir ./verilog-out").value
}

compileSpiController := {
  (run in Compile).toTask(" Controller --target-dir ./verilog-out").value
}

compileSpiBuffer := {
  (run in Compile).toTask(" Buffer --target-dir ./verilog-out").value
}