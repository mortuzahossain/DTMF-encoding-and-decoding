function [ dilled_digit ] = get_output_from_frequency( f1,f2 )

% Get f1 and f2 as input and return the digit corrosponding to the frequencys

    if f1 >= 941 && f2 <= 1336
        dilled_digit = '0';
    elseif f1 >= 941 && f2 <= 1477
        dilled_digit = '#';
    elseif f1 >= 941 && f2 <= 1209
        dilled_digit = '*';
    elseif f1 >= 842 && f2 <= 1209
        dilled_digit = '7';
    elseif f1 >= 842 && f2 <= 1336
        dilled_digit = '8';
    elseif f1 >= 842 && f2 <= 1477
        dilled_digit = '9';
    elseif f1 >= 760 && f2 <= 1209
        dilled_digit = '4';
    elseif f1 >= 760 && f2 <= 1336
        dilled_digit = '5';
    elseif f1 >= 760 && f2 <= 1477
        dilled_digit = '6';
    elseif f1 >= 697 && f2 <= 1209
        dilled_digit = '1';
    elseif f1 >= 697 && f2 <= 1336
        dilled_digit = '2';
    elseif f1 >= 697 && f2 <= 1477
        dilled_digit = '3';
    elseif f1 >= 941 && f2 <= 1633
        dilled_digit = 'D';
    elseif f1 >= 842 && f2 <= 1633
        dilled_digit = 'C';
    elseif f1 >=760  && f2 <= 1633
        dilled_digit = 'B';
    elseif f1 >= 697 && f2 <= 1633
        dilled_digit = 'A';
    else
        disp('Invalid DTFT !!! :( Sorry Dont Figure It Out');
    end
    
	%{
	@ Mortuza Hossain
	ID : 150102099
	%}
end

