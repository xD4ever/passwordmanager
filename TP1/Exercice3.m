concentration = input("Entrez la concentration d'ozone :");
if concentration >= 140 && concentration < 180
    niveau = 1;
elseif concentration >= 180 && concentration < 220
    niveau = 2;
elseif concentration >= 220
    niveau = 3;
else
    niveau = 0;
end
fprintf(" Aujourd'hui, niveau de pollution est %d", niveau);