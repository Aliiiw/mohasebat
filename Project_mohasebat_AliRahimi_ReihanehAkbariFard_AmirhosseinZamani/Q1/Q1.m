% Ali Rahimi , Reihaneh AkbariFard, Amirhossein Zamani
% Student Numbers : 9932120, 9932107, 9932100

% variables in order are x, y, z, w, m

%function gauss_elimnation()

matrixInput = input('input coefficients as a matrix: ');
matrixAnswers = input('input answers as a matrix: ');

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