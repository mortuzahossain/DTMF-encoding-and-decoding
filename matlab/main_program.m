clc
clear

% MULTIPLE DIGIT IN INPUT CAN BE HANDELED LIKE :- 123456789ABCD# IN ONE DIAL
% FOR EACH DIGIT IT WILL PRODUCE 5 PLOT.

myinput = input('Enter A DTMF input : ','s');
returnsignal = [];
for i = 1:length(myinput)
   returnsignal = [returnsignal process_dtmf_input(myinput(i))];%PROCESS AND GET THE OUTPUT ; THEN SAVE IT IN ARRAY 
end

disp('You Have Dialed : ')
disp(returnsignal)

%{
So many figure : you can close at once by
using 'close all' to remove all the figure at once
@ Mortuza Hossain
ID : 150102099
source code : https://github.com/mortuzahossain/DTMF-encoding-and-decoding
%}