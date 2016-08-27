I=imread('cameraman.tif');
T=[1 0 0;0 1 0;10 10 1];
S=[2 0 0;0 2 0;0 0 1];
R=[cos(0.1) sin(0.1) 0; -sin(0.1) cos(0.1) 0; 0 0 1];
Output=T*S*R;
Affine_Output=affine2d(Output);
Final=imwarp(I,Affine_Output);
figure,imshow(I,[]),figure,imshow(Final,[])
