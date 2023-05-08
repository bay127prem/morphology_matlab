I=imread("circles.png");
subplot(231);
imshow(I), title('Original')

se = strel('square', 3);
I1 = imdilate(I, se);

se = strel('square', 3);
I2 = imerode(I, se);

subplot(232);
imshow(I1 - I2), title('Square 3')

se = strel('square', 7);
I1 = imdilate(I, se);

se = strel('square', 7);
I2 = imerode(I, se);

subplot(233);
imshow(I1 - I2), title('Square 7')




se = strel('diamond', 1);
I1 = imdilate(I, se);

se = strel('diamond', 1);
I2 = imerode(I, se);

subplot(234);
imshow(I1 - I2), title('Diamond 1')

se = strel('diamond', 5);
I1 = imdilate(I, se);

se = strel('diamond', 5);
I2 = imerode(I, se);

subplot(235);
imshow(I1 - I2), title('Diamond 5')

figure


I=imread("circles.png");
subplot(231);
imshow(I), title('Original')

Is = edge(I, 'sobel');
Ip = edge(I, 'prewitt');
Ir = edge(I, 'roberts');
subplot(234), imshow(Is), title('Sobel')
subplot(235), imshow(Ip), title('Prewitt')
subplot(236), imshow(Ir), title('Roberts')








figure;

I=imread("cameraman.tif");
subplot(231);
imshow(I), title('Original')

se = strel('square', 3);
I1 = imdilate(I, se);

se = strel('square', 3);
I2 = imerode(I, se);

subplot(232);
imshow(I1 - I2), title('Square 3')

se = strel('square', 7);
I1 = imdilate(I, se);

se = strel('square', 7);
I2 = imerode(I, se);

subplot(233);
imshow(I1 - I2), title('Square 7')




se = strel('diamond', 1);
I1 = imdilate(I, se);

se = strel('diamond', 1);
I2 = imerode(I, se);

subplot(234);
imshow(I1 - I2), title('Diamond 1')

se = strel('diamond', 5);
I1 = imdilate(I, se);

se = strel('diamond', 5);
I2 = imerode(I, se);

subplot(235);
imshow(I1 - I2), title('Diamond 5')

figure


I=imread("cameraman.tif");
subplot(231);
imshow(I), title('Original')

Is = edge(I, 'sobel');
Ip = edge(I, 'prewitt');
Ir = edge(I, 'roberts');
subplot(234), imshow(Is), title('Sobel')
subplot(235), imshow(Ip), title('Prewitt')
subplot(236), imshow(Ir), title('Roberts')