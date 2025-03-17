t = 0:0.01:2*pi;
A = 2;
B = 1;
x = A * cos(t);
y = B * sin(t);

plot(x, y, 'r');
title('Ellipse');
xlabel('x');
ylabel('y');
grid on;
axis equal;
axis([-2 2 -1 1]);
