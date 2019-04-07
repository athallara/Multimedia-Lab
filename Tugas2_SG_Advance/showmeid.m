clear;
clc;

id = input('Masukkan ID = ','s');

idLength = length(id);

change = str2num(id);
% ./ TESTING
% checkInt = isnumeric(id);
%  disp(isnumeric(change));
%  disp(isinteger(uint8(1:255)));
%  C = id[1:3];
% ./EndTest
if(idLength == 10 && isnumeric(change))
    disp(['Kode negara : ',id(1:3)] );
    disp(['Kode provinsi : ',id(4:5)] );
    disp(['Kode kota : ',id(6:7)] );
    disp(['Kode personal : ',id(8:10)] );
else
    disp('Error');
end
