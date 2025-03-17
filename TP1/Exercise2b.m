choix = menu('Choisissez une opération:', 'Minimum', 'Maximum', 'Médiane');

a = input('Entrez le premier nombre: ');
b = input('Entrez le deuxième nombre: ');
c = input('Entrez le troisième nombre: ');

switch choix
    case 1
        if a <= b && a <= c
            minimum = a;
        elseif b <= a && b <= c
            minimum = b;
        else
            minimum = c;
        end
        fprintf('Le minimum des trois nombres est: %f\n', minimum);
        
    case 2 
        if a >= b && a >= c
            maximum = a;
        elseif b >= a && b >= c
            maximum = b;
        else
            maximum = c;
        end
        fprintf('Le maximum des trois nombres est: %f\n', maximum);
        
    case 3 
        if (a >= b && a <= c) || (a <= b && a >= c)
            mediane = a;
        elseif (b >= a && b <= c) || (b <= a && b >= c)
            mediane = b;
        else
            mediane = c;
        end
        fprintf('La valeur médiane des trois nombres est: %f\n', mediane);
end