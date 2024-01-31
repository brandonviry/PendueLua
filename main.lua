local Json = require("file")
local Pendue  = require("pendue")

local f ="info.json"
local donne= Json:lire(f)
print("Bienvenue dans le jeux du  " .. donne["nom"] .. " version " .. donne["version"] .. " de " .. donne["auteur"])
partie=true
while partie do
    print("\nVoulez vous faire une partie :(saisir  o ou n) :")
    local choix = io.read()
    if choix == "o"  then
        local game = Pendue.nouveau()
         game:jouer()
    elseif choix =="n" then
        print("Fin de jeux  !")
        partie = false
      
    else 
        print("Ce choix est incorrect !")
    end
end
