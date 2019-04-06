% MATRIX yang digunakan : statis, 2x2.
clear
clc

%STATIC MATRIX
A = [8,4;6,12];
B = [2,2;2,2];

    fprintf('1. Tambah \n' );
    fprintf('2. Kurang \n' );
    fprintf('3. Bagi \n' );
    fprintf('4. Pangkat Dua (Element, Matriks A)\n' );
    fprintf('5. Perkalian (Element) \n' );
    fprintf('6. Perkalian (Matriks) \n' );
    fprintf('7. Perkalian Skalar (Dikali 2, Matriks A) \n' );
    
%Case
choose = input('Pilihan : ');
   switch(choose)
   case 1 
      disp(A+B);
   case 2
       disp(A-B);
   case 3 
       disp(A./B);
   case 4
       disp(A.^2);
   case 5
       disp(A.*B);
   case 6
       disp(A*B);
   case 7
       disp(A.*2);
   otherwise
      fprintf('Pilihan Salah! \n' );
   end
