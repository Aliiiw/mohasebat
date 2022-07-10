% Ali Rahimi, Reihaneh AkbariFard, Amirhossein Zamani
% 9932120, 9932107, 9932100

x0 = 1.5;
fx = @(x) x^3 - (x^4 + x^2 + 5)^(1/3);  
dfx = @(x) 3*x^2 - ((4*x^3 + 2*x) / (3*(x^4 + x^2 + 5)^(2/3)));
n = 15;
newton_Q2_B(x0, fx, dfx, n);

