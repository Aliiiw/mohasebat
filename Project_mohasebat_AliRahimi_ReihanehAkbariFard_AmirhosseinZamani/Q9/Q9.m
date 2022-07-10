% Ali Rahimi , Reihaneh AkbariFard , Amirhossein Zamani
% 9932120, 9932107, 9932100

f1 = @(t, x1, x2) x2;
f2 = @(t, x1, x2) 4 * x2 + (t^2) * x1 + (t^4) * log(t);
tspan=[2, 8];
x10 = 1;
x20 = 1;
n = 100;
[t, x1, x2] = RK4_function(f1, f2, tspan, x10, x20, n);
format long
fprintf('The answer to the differential equation is:\n\n    x        y(x)        dify(x)\n\n');
result = [t, x1, x2];
disp(result);
plot(t, x1)
plot(t, x2)