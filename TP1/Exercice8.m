n_valeurs = 3:30;
r_n = 2;
p_n = sqrt(2);
true_pi = pi;

fprintf('%-10s %-25s %-25s\n', 'n', 'p_n (Perimeter)','Absolute Error');

for n = n_valeurs
    r_n = r_n/(2 + sqrt(4 - r_n));
    p_n = power(2,(n-1)) * sqrt(r_n);
    
    error = abs(true_pi - p_n);
    
    fprintf('%-10d %-25.15f %-25.15f\n', n, p_n, error);
end