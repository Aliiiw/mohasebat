% Ali Rahimi , Reihaneh AkbariFard , Amirhossein Zamani
% 9932120, 9932107, 9932100

clear,clc
file = fopen('deta.txt','r');
data =  fscanf(file, '%f');
fclose(file);

x = [];
y = [];
n = size(data);
n = n(1);
i = 1;

while i <= n
    x = [x data(i)];
    i = i + 1;
    y = [y data(i)];
    i = i + 1;
end


odds = 0;
for i = 2 : n / 2 - 2
    odds = odds + y(i);
    i = i + 2;
end

evens = 0;
for i = 3 : n / 2 - 1
    evens = evens + y(i);
    i = i + 2;
end

firstAndEnd = y(1) + y(n / 2);
h = x(2) - x(1);

simpson = (h / 3 * (n / 2)) * (firstAndEnd + 4 * (odds) + 2 * (evens)); 

n = n / 2 - 1;

% Part B
dfx = [];
for i = 2:n
   dfx = [dfx (y(i + 1) - y(i - 1)) / (x(i + 1) - x(i - 1))];
end

plot(dfx)

% Part G
ddfx = [];
for i = 5:9991
   ddfx = [ddfx (y(i + 2) - 2 * y(i) + y(i - 2)) / (4 * (x(i - 1) - x(i)) ^ 2)];
end

plot(ddfx)

disp('Integral = ')
disp(simpson)

%fprintf('Moshtagh Aval = %f\n', dfx)

%fprintf('Moshtagh Dovom = %f\n', ddfx)
