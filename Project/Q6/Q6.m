% Ali Rahimi, Reihaneh AkbariFard, Amirhossein Zamani
% 9932120, 9932107, 9932100

disp('matrix input : ');
A = [9 -3 -6 ; 2 8 2 ; -5 10 7]
x = [1 ; 1 ; 1];
e = 0;

for i = 1:100

    x = A * x;
    xModified = abs(x);
    eModified = max(xModified);
    
    for j = 1:3
        if eModified == abs(x(j))
            e = x(j);
        end
    end
    x = x / e;
end

fprintf('Lambda max : %4.4f \n', e)
AInverse = inv(A);
x = [1 ; 1 ; 1];
e = 0;
for i = 1:100
    
    x = AInverse * x;
    xModified = abs(x);
    eModified = max(xModified);

    for j = 1:3
        if eModified == abs(x(j))
            e = x(j);
        end
    end
    x = x / e;
end
e = 1 / e;
fprintf('Lambda min : %4.4f  \n', e)



