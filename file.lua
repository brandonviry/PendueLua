local dkjson = require("dkjson")
File ={}
function File:lire(nomFichier)
	local fichier = assert(io.open(nomFichier,"r"))
	local contenue = fichier:read("*a")
	fichier:close()
	return dkjson.decode(contenue)
end


if not ... then  
	local f ="info.json"
	local donne= File:lire(f)

	for cle , val in pairs(donne) do 
		print(cle , val)
	end 

else  
	return File

end



