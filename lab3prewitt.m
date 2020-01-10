function [prw,xprw, yprw,prwgrad]= lab3prewitt (I,t)
[r,c,ch]=size(I);
if ch==3
    I=rgb2gray(I);
end

flx=[-1,0,1;-1,0,1;-1,0,1];
fly=[-1,-1,-1;0,0,0;1,1,1];
I=double(I);


I1=conv2(I,flx,'same');
I1=uint8(I1);
xprw=I1;
I2=conv2(I,fly,'same');
I2=uint8(I2);
yprw=I2;
I1=double(I1);
I2=double(I2);
I4=I;

for i=1:r
    for j=1:c
        m=sqrt(I1(i,j).^2+I2(i,j).^2);
        if m>t
            I(i,j)=255;        
        else
            I(i,j)=0;
        end      
        I4(i,j)=m;
    end
end
I=uint8(I);
prw=I;
I4=uint8(I4);

prwgrad=I4;

end