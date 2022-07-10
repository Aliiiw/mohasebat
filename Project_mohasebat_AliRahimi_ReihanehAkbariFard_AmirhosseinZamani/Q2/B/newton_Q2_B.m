% Ali Rahimi, Reihaneh AkbariFard, Amirhossein Zamani
% 9932120, 9932107, 9932100

function newton_Q2_B (x0, fx, dfx, n)

    stepRepeat = 0;
    
    while stepRepeat < 16
        if(dfx(x0) == 0)
            fprintf("Taghsim be sefr , Error\n")
            break;
        end
        
        xtemp = x0 - (fx(x0) / dfx(x0));
        fprintf("repeat %d xtemp = %.4f\t", stepRepeat, xtemp)
        fprintf("f(xtemp) =  %.4f\n", fx(xtemp))

        x0 = xtemp;
        stepRepeat = stepRepeat + 1;

        if stepRepeat > n 
            fprintf("Root is : %.4f\n", xtemp)
            break;
        end
    end
end
        