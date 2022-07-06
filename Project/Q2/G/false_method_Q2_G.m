% Ali Rahimi, Reihaneh AkbariFard, Amirhossein Zamani
% 9932120, 9932107, 9932100

function false_method_Q2_G (x0, x1, value, fx)

    stepReapet = 1;
    flag = true;

    while flag

        temp = (x0) - (x1 - x0) * (fx(x0) / (fx(x1) - fx(x0)));

        fprintf("repeat %d temp = %.4f\t", stepReapet, temp)
        fprintf("f(temp) = %.4f \n", fx(temp))

        if fx(temp) * fx(x0) < 0
            x1 = temp;
        else
            x0 = temp;
        end

        stepReapet = stepReapet + 1;

        flag = abs(fx(temp)) > value;

        if(abs(fx(temp)) <= 0.001)
            break;
        end
        
    end
    fprintf("root is =  %.4f\n", temp)
    
end