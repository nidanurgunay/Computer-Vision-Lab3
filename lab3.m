
I1=imread("peppers.png");
I1=rgb2gray(I1);
I2=imread("object_contours.jpg");
I2=rgb2gray(I2);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[I3,I4,I5,I6]=lab3sobel(I1,120);

figure
subplot(2,3,1)
imshow(I1);
title("Original image");
subplot(2,3,2)
imshow(I4);
title("Sobel X filtered Image");
subplot(2,3,3)
imshow(I5);
title("Sobel Y filtered Image");
subplot(2,3,5)
imshow(I6);
title("Sobel Gradient");
subplot(2,3,6)
imshow(I4);
title("Sobel Edges");
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[I3,I4,I5,I6]=lab3sobel(I1,120);

figure
subplot(2,3,1)
imshow(I1);
title("Original image");
subplot(2,3,2)
imshow(I4);
title("Sobel X filtered Image");
subplot(2,3,3)
imshow(I5);
title("Sobel Y filtered Image");
subplot(2,3,5)
imshow(I6);
title("Sobel Gradient");
subplot(2,3,6)
imshow(I4);
title("Sobel Edges");

%%%%%%%%%%%%%%%%%%%%
[I3,I4,I5,I6]=lab3prewitt(I1,120);

figure
subplot(2,3,1)
imshow(I1);
title("Original image");
subplot(2,3,2)
imshow(I4);
title("Prewitt X filtered Image");
subplot(2,3,3)
imshow(I5);
title("Prewitt Y filtered Image");
subplot(2,3,5)
imshow(I6);
title("Prewitt Gradient");
subplot(2,3,6)
imshow(I4);
title("Prewitt Edges");

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5

[I7,I8]=lab3log(I2,10,80)
figure
subplot(1,3,1)
imshow(I2);
title("Original image");
subplot(1,3,2)
imshow(I2);
title("Laplacian of Image");
subplot(1,3,3)
imshow(I2);
title("Log Edges");


