% Ali Rahimi , Reihaneh AkbariFard, Amirhossein Zamani
% Student Numbers : 9932120, 9932107, 9932100

% variables in order are x, y, z, w, m

%Gauss Elimination

equation1 = @(x, y, z, w, m ) 0.3*x + 9*y - z + 3*w - 2*m;
equation2 = @(x, y, z, w, m ) 7*x + 0*y + z - 4*w - m;
equation3 = @(x, y, z, w, m ) 6*x + 2*y + 2*z + 8*w + m;
equation4 = @(x, y, z, w, m ) -1*x + 17*y - 1.2*z + w + 0*m;
equation5 = @(x, y, z, w, m ) -1*x + 1*y + z + 2*w  + 0*m;

syms x y z w m
variables = [x y z w m];
[v1, t1] = coeffs(equation1, variables);
zeroFind = setdiff(variables, t1);
v1 = [v1 , zeros(1, length(zeroFind))];

[v2, t2] = coeffs(equation2, variables);
zeroFind = setdiff(variables, t2);
v2 = [v2 , zeros(1, length(zeroFind))];
v2 = [v2(1) 0 v2(2:4)];

[v3, t3] = coeffs(equation3, variables);
zeroFind = setdiff(variables, t3);
v3 = [v3 , zeros(1, length(zeroFind))];

[v4, t4] = coeffs(equation4, variables);
zeroFind = setdiff(variables, t4);
v4 = [v4 , zeros(1, length(zeroFind))];

[v5, t5] = coeffs(equation5, variables);
zeroFind = setdiff(variables, t5);
v5 = [v5 , zeros(1, length(zeroFind))];


matrixInput = [v1 ; v2 ; v3 ; v4 ; v5]
matrixAnswers = [17 ; 3 ; 1 ; 15 ; -7]

matrixInput(: ,length(matrixInput) + 1) =  matrixAnswers;
[rows, coloumns] = size(matrixInput);
answer = zeros(rows, 1);

for i = 1: coloumns
    for j = i + 1: rows
        temp = matrixInput(i, :).*(-matrixInput(j, i) / matrixInput(i, i));
        matrixInput(j, :) = temp + (matrixInput(j, :));
    end
end
for i = length(1:rows) - (1:rows) + 1
    if(i < coloumns - 1)
    matrixInput(i, coloumns) = matrixInput(i, coloumns) - (sum(matrixInput(i, i + 1:coloumns - 1)));
    end
    answer(i) = matrixInput(i, coloumns) / (matrixInput(i, i));
    matrixInput(1:i - 1, i) = matrixInput(1:i - 1, i).*answer(i);
end

fprintf("  x = %f\n  y = %f\n  z = %f\n  w = %f\n  m = %f\n", answer(1), answer(2), answer(3), answer(4), answer(5));