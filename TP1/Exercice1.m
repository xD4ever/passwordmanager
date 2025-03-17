a = input('Entrez la valeur de a : ');
b = input('Entrez la valeur de b : ');

if a > b
    temp = a;
    a = b;
    b = temp;
end

disp('Les valeurs finales sont : a = %.2f, b = %.2f\n', a, b);