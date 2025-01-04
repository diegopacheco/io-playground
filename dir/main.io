#!/usr/bin/env io
writeln("")
writeln("items:")
Directory items foreach(path println)

writeln("")
writeln("directories:")
Directory directories foreach(name println)