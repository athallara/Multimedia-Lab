clc
clear

%Creating Figure with 4 Column
figure(4);

%Read your image file, add your own image (file)
image = imread('exampleFile.png');

%Figure1 : Display Normal
subplot(2,2,1),imshow(image), title('Normal');

%Figure2 : Display Noise
noise = imnoise(image,'poisson');
subplot(2,2,2),imshow(noise), title('Noise');

%Figure3 : Display Rotated
rotate = imrotate(image,180);
subplot(2,2,3),imshow(rotate), title('rotate');

%Figure4 : Display Cropped
crop = imcrop(image,[1000 2000 1000 1000]); 
subplot(2,2,4),imshow(crop), title('crop');
 
 