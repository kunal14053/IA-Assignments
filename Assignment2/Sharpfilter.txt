I=imread('cameraman.tif');
J=[I;zeros(1,256)];
J=[zeros(1,256);J];
Z=zeros(258,1);
J=[Z J Z];
J=double(J);
R=zeros(256,256);
for i=2:256
for j=2:256
R(i-1,j-1)=J(i+1,j)+J(i-1,j)+J(i,j+1)+J(i,j-1)-4*J(i,j);
end
end
R=uint8(R);
Out=I-R;
imshow(I),figure,imshow(R),figure,imshow(Out);