clc;

%IF-Else Example
a = input('Masukan Bilangan Pertama = ');
b = input('Masukkan Bilangan Kedua  = ');

if a>b
    disp('A Lebih besar dari B');
elseif b>a
    disp('B Lebih besar dari A');
else
    disp('Sama');
end;

disp('----------------');
%Switch Case Example
disp('A or B');
c = input('Choose Menus = ','s'); %'s' is used for define input is string
switch lower(c)
    case 'a'
        disp('A choosed')
    case 'b'
        disp('B choosed')
    otherwise
        disp('Default')
end;