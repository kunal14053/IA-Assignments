I=imread('cameraman.tif');
[M N]=size(I);
[u,v]=meshgrid(1:M,1:N);
T=[1 0 0;0 1 0;10 10 1];
S=[2 0 0;0 2 0;0 0 1];
p=((S(1)*(u+T(3))).*cos(0.1)-(S(5)*(v+T(6))).*sin(0.1));
q=((S(1)*(u+T(3))).*sin(0.1)+(S(5)*(v+T(6))).*cos(0.1));
[p1,q1]=meshgrid(-40:S(1)*M+80,-40:S(5)*N+80);
Vq = griddata(p,q,double(I),p1,q1);
figure, imshow(Vq,[])
