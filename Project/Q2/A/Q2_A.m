% Ali Rahimi, Reihaneh AkbariFard, Amirhossein Zamani
% 9932120, 9932107, 9932100
x0 = 0;
x1 = 1;
value = 0.00001;
fx = @(x) x^3 + 4*x^2 - 2;   
bisection_Q2_A(x0, x1, value, fx);

