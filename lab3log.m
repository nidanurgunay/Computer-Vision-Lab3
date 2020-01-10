function [image1,image2]= lab3log(I,t1,t2)
[r,c,ch]=size(I);
if ch==3
    I=rgb2gray(I);
end
I=double(I);
I=imgaussfilt(I);
lap=[0,1,0;1,-4,1;0,1,0];
I2=zeros(size(I));

Ij=conv2(I,lap,'same');
image1=Ij;

for i=2:r-1
    for j=2:c-1
        if Ij(i,j)>t1
            if (Ij(i-1,j)*Ij(i,j)<0) ||(Ij(i+1,j)*Ij(i,j)<0)||(Ij(i,j-1)*Ij(i,j)<0)||(Ij(i,j+1)*Ij(i,j)<0)
                if abs( Ij(i-1,j)-Ij(i,j)>t2) ||abs (Ij(i+1,j)-Ij(i,j)>t2)|| abs(Ij(i,j-1)-Ij(i,j)>t2)||abs(Ij(i,j+1)-Ij(i,j)>t2)
                I2(i,j)=255;
                end
            end
            
        else
             if (Ij(i-1,j)*Ij(i+1,j)<0) ||(Ij(i,j-1)*Ij(i,j+1)<0)
                if abs( Ij(i-1,j)-Ij(i+1,j)>t2) || abs(Ij(i,j-1)-Ij(i,j+1)>t2)
                I2(i,j)=255;
                end
             end           
        end        
    end
end
uint8(I2);
image2=I2;




end