local Json = require("file")
local Mathem = require("Mathem")
local Mot = {mot=""}
Mot.slection = function(position)
    local f ="motssac.Json"
	local donne= Json:lire(f)
    Mot.mot=donne[position].label
    return Mot.mot
end
Mot.liste = function()
    local f ="mot.Json"
	local donne= Json:lire(f)

    return donne
end

Mot.listelen = function()
    local lst = Mot.liste()
    return #lst
end


if not ... then
  
    print(Mot.slection(Mathem.alea(0,Mot.listelen())))
       
else  
   return Mot
end