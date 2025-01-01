dict := Map clone    
dict atPut("hello", "a greeting")   
dict atPut("goodbye", "a parting")   
dict hasKey("hello")

dict hasValue("a greeting") println
dict keys println

dict foreach(k, v, (k .. ":" .. v) println)