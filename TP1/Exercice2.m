% Script 1: Trouver le minimum de 3 nombres
a = input('Entrez le premier nombre: ');
b = input('Entrez le deuxième nombre: ');
c = input('Entrez le troisième nombre: ');

if a <= b && a <= c
    minimum = a;
elseif b <= a && b <= c
    minimum = b;
else
    minimum = c;
end

fprintf('Le minimum des trois nombres est: %f\n', minimum);

% Script 2: Trouver le maximum de 3 nombres
if a >= b && a >= c
    maximum = a;
elseif b >= a && b >= c
    maximum = b;
else
    maximum = c;
end

fprintf('Le maximum des trois nombres est: %f\n', maximum);

% Script 3: Trouver la valeur médiane de 3 nombres
if (a >= b && a <= c) || (a <= b && a >= c)
    mediane = a;
elseif (b >= a && b <= c) || (b <= a && b >= c)
    mediane = b;
else
    mediane = c;
end

fprintf('La valeur médiane des trois nombres est: %f\n', mediane);