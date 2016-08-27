I = imread('cameraman.tif');
d = im2double(I);
figure, imshow(d);
%log on domain [0,1]
f = d;
c = 1/log(1+1);
j1 = c*log(1+f);
figure, imshow(j1);
%log on domain [0, 255]
f = d*255;
c = 1/log(1+255);
j2 = c*log(1+f);
figure, imshow(j2);
%log on domain [0, 2^16]
f = d*2^16;
c = 1/log(1+2^16);
j3 = c*log(1+f);
figure, imshow(j3);  
%log on domain [0, 2^4]
f = d*2^4;
c = 1/log(1+2^4);
j4 = c*log(1+f);
figure, imshow(j4);  


