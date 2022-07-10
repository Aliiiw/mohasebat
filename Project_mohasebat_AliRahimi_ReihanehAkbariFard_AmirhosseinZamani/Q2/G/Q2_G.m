% Ali Rahimi, Reihaneh AkbariFard, Amirhossein Zamani
% 9932120, 9932107, 9932100

x0 = 1;
x1 = 2;
value = 0.00001;

fx = @(x) x^3 - (2^((x)^(1/2)));   
false_method_Q2_G(x0, x1, value, fx);