% Ali Rahimi, Reihaneh AkbariFard, Amirhossein Zamani
% 9932120, 9932107, 9932100
%bisection method

function bisection_Q2_A (x0, x1, value, fx)

    stepReapet = 0;
    flag = true;

    while flag

        temp = (x0 + x1) / 2;
        fprintf("repeat %d x2 = %.3f\t", stepReapet + 1, temp)
        fprintf("f(x2) = %.3f \n", fx(temp))

        if fx(temp) * fx(x0) < 0
            x1 = temp;
        else
            x0 = temp;
        end


        stepReapet = stepReapet + 1;

        flag = abs(fx(temp)) > value;

        if(abs(fx(temp)) <= 0.004)
            break;
        end
        
     end
    fprintf("number of n is =  %d \n", stepReapet)
end