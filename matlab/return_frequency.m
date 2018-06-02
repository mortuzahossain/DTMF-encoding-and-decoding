
function [ f1 f2 ] = return_frequency( my_input )
% Use Of Array Could be good , But for programm simplicity i use this
% approach. This code will be time consuming because of bad designing and
% coding .
%{
@ Mortuza Hossain
ID : 150102099
%}

    if my_input == '1'
        f1 = 697;
        f2 = 1209;
    elseif my_input == '2'
        f1 = 697;
        f2 = 1336;
    elseif my_input == '3'
        f1 = 697;
        f2 = 1477;
    elseif my_input == '4'
        f1 = 770;
        f2 = 1209;
    elseif my_input == '5'
        f1 = 770;
        f2 = 1336;
    elseif my_input == '6'
        f1 = 770;
        f2 = 1477;
    elseif my_input == '7'
        f1 = 852;
        f2 = 1209;
    elseif my_input == '8'
        f1 = 852;
        f2 = 1336;
    elseif my_input == '9'
        f1 = 852;
        f2 = 1477;
    elseif my_input == '0'
        f1 = 941;
        f2 = 1336;
    elseif my_input == 'A'
        f1 = 697;
        f2 = 1633;
    elseif my_input == 'B'
        f1 = 770;
        f2 = 1633;
    elseif my_input == 'C'
        f1 = 852;
        f2 = 1633;
    elseif my_input == 'D'
        f1 = 941;
        f2 = 1633;
    elseif my_input == '*'
        f1 = 941;
        f2 = 1209;
    elseif my_input == '#'
        f1 = 941;
        f2 = 1477;
    else
        disp('Invalid DTFT !!! :( Sorry');
    end

end

