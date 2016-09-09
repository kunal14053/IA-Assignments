A=imread('cameraman.tif');
B=imread('Fig0417(a)(barbara).tif');
C = imhistmatch(A,B);
imhist(A),figure(),imhist(B),figure(),imhist(C);
figure,imshow(A),figure,imshow(B),figure,imshow(C);