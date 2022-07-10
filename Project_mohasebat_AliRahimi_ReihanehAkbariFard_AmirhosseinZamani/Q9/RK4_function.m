% Ali Rahimi , Reihaneh AkbariFard , Amirhossein Zamani
% 9932120, 9932107, 9932100

function [T, X1, X2] = RK4_function(f1, f2, tspan, x10, x20, n)
a = tspan(1); 
b = tspan(2);

h = (b - a) / n;
t = a; 
T = a;
x1 = x10; 
X1 = x10';
x2 = x20; 
X2 = x20';

for i = 1:n
    k11 = h * f1(t, x1, x2);
    k12 = h * f2(t, x1, x2);
    k21 = h * f1(t + h / 2, x1 + k11 / 2, x2 + k12 / 2);
    k22 = h * f2(t + h / 2, x1 + k11 / 2, x2 + k12 / 2);
    k31 = h * f1(t + h / 2, x1 + k21 / 2, x2 + k22 / 2);
    k32 = h * f2(t + h / 2, x1 + k21 / 2, x2 + k22 / 2);
    k41 = h * f1(t + h, x1 + k31, x2 + k32);
    k42 = h * f2(t + h, x1 + k31, x2 + k32);
    x1 = x1 + (k11 + 2 * k21 + 2 * k31 + k41) / 6;
    x2 = x2 + (k12 + 2 * k22 + 2 * k32 + k42) / 6;
    t = a + i * h;
    T = [T;t];
    X1 = [X1;x1];
    X2 = [X2;x2];
end
end