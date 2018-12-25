im=imread('D:\matlab class\image\1327-w.jpg')
im=im2bw(im);
%Structuring element
E=[1 1 0];
%Pad array with ones on both sides
C=padarray(im,[0 1],1);
%Intialize the matrix D of size A with zeros
D=false(size(im));
for i=1:size(C,1)
    for j=1:size(C,2)-2
        L=C(i,j:j+2);
 %Find the position of ones in the structuring element
        K=find(E==1);
       if(L(K)==1)
        D(i,j)=1;
        end
    end
end
figure,imshow(D);