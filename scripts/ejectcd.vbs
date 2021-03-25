Set oSH = CreateObject("Shell.Application")
Set oNS=oSH.NameSpace(17)
Set oCD=oNS.ParseName("E:")
oCD.InvokeVerb "Eject"
Wscript.sleep 3000