I=imread('cameraman.tif');

I=double(I);

pr=zeros(256,1);

for j=0:255
	pr(j+1)=nnz(I==j);
end

for j=1:256
	pr(j)=pr(j)/65536;
end

prk=zeros(256,1);

sum=0;

for i=1:256
	sum=0;
	for j=1:i
		sum=sum+pr(j);
	end
	prk(i)=sum*255;
end

prk=round(prk);


Z=imread('Fig0417(a)(barbara).tif');

Z=double(Z);

zs=zeros(256,1);

for j=0:255
	zs(j+1)=nnz(Z==j);
end

for j=1:256
	zs(j)=zs(j)/227532;
end

zsk=zeros(256,1);

sum=0;

for i=1:256
	sum=0;
	for j=1:i
		sum=sum+zs(j);
	end
	zsk(i)=sum*255;
end

zsk=round(zsk);




M=zeros(256,1);

min=9999;
index=-1;

for i=1:256	
	min=9999;
	index=-1;
	
	for j=1:256
		if min > abs(prk(i)-zsk(j))
			min=prk(i)-zsk(j);
			index=j;
		end
	end	
	
	M(i)=index;
end



for i=1:256
	for j=1:256
		I(i,j)=M(I(i,j)+1);
	end
end


I=uint8(I);

Preview=imread('cameraman.tif');
Reference=imread('Fig0417(a)(barbara).tif');

imshow(Preview),figure,imhist(Preview),figure,imshow(Reference),figure,imhist(Reference),figure,imshow(I),figure,imhist(I);








