% Ali Rahimi, Reihaneh AkbariFard, Amirhossein Zamani
% 9932120, 9932107, 9932100

clear , clc ,close all;

f = @(x) sin(31*x) - 2*cos(23*x);
a = [];
b = [];
n = 10;
x = linspace(-7 ,6.5, n);

for i = 1:n - 1  
    if f(x(i)) * f(x(i + 1)) < 0  
        a = [a  x(i) ];
        b = [b x(i + 1)];        
    elseif f(x(i)) == 0
        a = [a x(i)];
        b = [b x(i)];
    end
end
if f(x(n)) == 0
    a = [a x(n)];
    b = [b x(n)];
end

numbersOfData = length(a);
fprintf('number of answers is  : %.0f  \n\n' , numbersOfData);
  
for i = 1:numbersOfData
    fprintf('range of answers from  %f to %f \n' , a(i), b(i))
end

% Part B
answer = [];
for i = 1:numbersOfData 
    for j = 1:10
        temp1 = a(i);
        temp2 = b(i);
        x = (temp1 + temp2) / 2;
        if temp1 * x < 0
            temp2 = x;
        elseif temp1 * x > 0
            temp1 = x;
        elseif x == 0
            break;
        elseif temp1 == 0
            x = temp1;
            break;
        end
    end
    answer = [answer x];
end

fprintf('\nanswers: ');
disp(answer);
  