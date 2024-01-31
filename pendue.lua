local Mot = require("selecmot")
local Mathem= require("mathem")

Pendue = {}

function Pendue.nouveau()
    local self = {
        ["mot"] = string.upper(Mot.slection(Mathem.alea(0, Mot.listelen()))),
        ["motVide"] = {},
        ["tentative"] = math.floor(Mot.listelen() / 100),
    }

    for index = 1, #self["mot"] do
        table.insert(self["motVide"], "_")
    end

    self.estPresent = Pendue.estPresent
    self.udpMot = Pendue.udpMot
    self.afficheMot = Pendue.afficheMot
    self.saisieLettre = Pendue.saisieLettre
    self.jouer = Pendue.jouer

    return self
end

function Pendue:estPresent(lettre)
    for index = 1, #self["mot"] do
        if self["mot"]:sub(index, index) == lettre then
            return true
        end
    end
    return false
end

function Pendue:udpMot(lettre)
    for index = 1, #self["mot"] do
        if self["mot"]:sub(index, index) == lettre then
            self["motVide"][index] = lettre
        end
    end
    return self["motVide"]
end

function Pendue:afficheMot()
    io.write(table.concat(self["motVide"], " "), "\n")
end

function Pendue:jouer()
    while self["tentative"] > 0 do
        print("\nVotre nombre de tentative est de: " .. self["tentative"])
        print("Saisir une lettre entre A et Z :")
        local saisie = string.upper(io.read())

        while #saisie ~= 1 or not (saisie >= "A" and saisie <= "Z") do
            if saisie == "CHEAT" then
                print(self["mot"])
            end
            print(string.upper("Erreur: veuillez recommencer : "))
            saisie = string.upper(io.read())
        end

        if self:estPresent(saisie) then
            self:udpMot(saisie)
        end
        self:afficheMot()
        self["tentative"] = self["tentative"] - 1

        if table.concat(self["motVide"]) == self["mot"] then
            print(string.upper("Félicitation vous avez gagné !"))
            self["tentative"] = -1
        end
    end

    if table.concat(self["motVide"]) ~= self["mot"] then
        print(string.upper("Defaite le mot est : "))
        print(self["mot"])
    end
end

if not ...  then
else 
    return Pendue
end 


