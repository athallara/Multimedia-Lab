clear;
clc;

% While Loops Example - Insert Data using Loops
% Command/Uncommand for Testing
Arr = [];

i = 1;
while(i<=3)
    new = input('Angka = ');
    Arr = [Arr; new]
end;

disp('-----------------');
% For Loops Example
% Command/Uncommand for Testing
disp("Matrix Size (A x B) :");
A = input('A : ');
B = input('B : ');

createMatrix = zeros(A:B);
%zeros is a func. for make square matrix size AxB
% disp(createMatrix); %uncommend for see it!

for m = 1:length(A)
    disp(A);
    for n = 1:length(B)
        disp(B);
    end
end
    
disp('-----------------');
%[Additional] SORT Example
datas = input('Masukkan Angka = ', 's');
%Actually, this input willbe like this: ['a','b','c'] 

sorted = sort(datas,'descend');
disp(sorted);

