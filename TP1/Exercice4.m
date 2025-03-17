n0 = 5;
U0 = 0.1;

for i = 0:(n0 - 1)
  U0 = 1 - exp(-(2*U0));
end
fprintf("U%d = %f\n", n0, U0);

n1 = 7;
U1 = 1;
for i = 1:(n1 - 1)
  U1 = 2*i*U1+3;
end
fprintf("U%d = %f\n", n1, U1);