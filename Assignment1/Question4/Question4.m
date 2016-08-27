I=imread('cameraman.tif');
[M,N]=size(I);
S = [2.3 0 0;0 2 0; 0 0 1];
[u,v]=meshgrid(1:M,1:N);
p=(u).*S(1);
q=(v).*S(5);
[p1,q1]=meshgrid(-50:S(1)*M+50,-50:S(5)*N+50);
Vq = interp2(p,q,double(I),p1,q1);
imshow(Vq,[])
