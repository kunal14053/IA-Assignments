function  value= F( x,y )
if(x==0 && y==0)
    value=1;
elseif(x==1&&y==0)
    value=2;
elseif(x==2 && y==0)
    value=3;
elseif(x==0 && y==-1)
    value=4;
elseif(x==1 && y==-1)
    value=5;
elseif(x== 2&& y==-1)
    value=6;
elseif(x== 0&& y==-2)
    value=7;
elseif(x==1 && y==-2)
    value=8;
elseif(x== 2&& y==-2)
    value=9;
else
    value=0;    
end

end

