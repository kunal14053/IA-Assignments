N1=zeros(5,5);
x=-1;
y=1;
for i=1:5
    for k=1:5
        N1(i,k)=5*F(x,y)+6*F(x-1,y)+4*F(x+1,y)+2*F(x,y-1)+F(x+1,y-1)+3*F(x-1,y-1)+7*F(x+1,y+1)+8*F(x,y+1)+9*F(x-1,y+1);
        x=x+1;
    end
    x=-1;
    y=y-1;
end

disp('Without using conv2: ')
disp('Full');
disp(N1);
disp('Same');
N2=N1(2:4,2:4);
disp(N2);

disp('Using conv2: ')
f=[1 2 3;4 5 6;7 8 9];
w=[1 2 3;4 5 6;7 8 9];
disp('full');
M1=conv2(f,w,'full');
disp(M1);
disp('Same');
M2=conv2(f,w,'same');
disp(M2);



