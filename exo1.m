I=imread("text.png");
subplot(241);
imshow(I), title('Original')


se = strel('line', 5, 20);
I1 = imdilate(I, se);
subplot(243);
imshow(I1), title('Line 5x20')

se = strel('line', 20, 5);
I1 = imdilate(I, se);
subplot(244);
imshow(I1), title('Line 20x5')


se = strel('square', 5);
I1 = imdilate(I, se);
subplot(245);
imshow(I1), title('Square 5x5')

se = strel('square', 10);
I1 = imdilate(I, se);
subplot(246);
imshow(I1), title('Square 10x10')


se = strel('disk', 5);
I1 = imdilate(I, se);
subplot(247);
imshow(I1), title('Disk 5')

se = strel('disk', 10);
I1 = imdilate(I, se);
subplot(248);
imshow(I1), title('Disk 10')


figure

subplot(241);
imshow(I), title('Original')

se = strel('line', 1, 3);
I1 = imerode(I, se);
subplot(243);
imshow(I1), title('Line 1x3')

se = strel('line', 1, 6);
I1 = imerode(I, se);
subplot(244);
imshow(I1), title('Line 1x6')


se = strel('square', 3);
I1 = imerode(I, se);
subplot(245);
imshow(I1), title('Square 3x3')

se = strel('square', 6);
I1 = imerode(I, se);
subplot(246);
imshow(I1), title('Square 6x6')


se = strel('disk', 2);
I1 = imerode(I, se);
subplot(247);
imshow(I1), title('Disk 2')

se = strel('disk', 6);
I1 = imerode(I, se);
subplot(248);
imshow(I1), title('Disk 6')


figure

subplot(131);
imshow(I), title('I - Original')

se = strel('square', 3);
I1 = imdilate(I, se);
subplot(132);
imshow(I1), title('I1 - I After Dilate Square 3x3')

se = strel('square', 3);
I1 = imerode(I1, se);
subplot(133);
imshow(I1), title('I2 - I1 After Erode Square 3x3')


figure

se = strel('square', 5);
Ic = imcomplement(I);
Id = imdilate(I, se);
Ie = imerode(Ic, se);
subplot(221), imshow(Id), title('Dilatation')
subplot(222), imshow(imcomplement(Ie)), title('Erosion du complement')

se = strel('square', 3);
Ic = imcomplement(I);
Id = imdilate(Ic, se);
Ie = imerode(I, se);
subplot(223), imshow(Ie), title('Erosion')
subplot(224), imshow(imcomplement(Id)), title('Dilatation du complement')


figure

subplot(241);
imshow(I), title('Original')

se = strel('line', 1, 3);
I1 = imclose(I, se);
subplot(243);
imshow(I1), title('Line 1x3')

se = strel('line', 1, 6);
I1 = imclose(I, se);
subplot(244);
imshow(I1), title('Line 1x6')


se = strel('square', 3);
I1 = imclose(I, se);
subplot(245);
imshow(I1), title('Square 3x3')

se = strel('square', 6);
I1 = imclose(I, se);
subplot(246);
imshow(I1), title('Square 6x6')


se = strel('disk', 2);
I1 = imclose(I, se);
subplot(247);
imshow(I1), title('Disk 2')

se = strel('disk', 6);
I1 = imclose(I, se);
subplot(248);
imshow(I1), title('Disk 6')



figure

subplot(241);
imshow(I), title('Original')

se = strel('line', 1, 3);
I1 = imopen(I, se);
subplot(243);
imshow(I1), title('Line 1x3')

se = strel('line', 1, 6);
I1 = imopen(I, se);
subplot(244);
imshow(I1), title('Line 1x6')


se = strel('square', 3);
I1 = imopen(I, se);
subplot(245);
imshow(I1), title('Square 3x3')

se = strel('square', 6);
I1 = imopen(I, se);
subplot(246);
imshow(I1), title('Square 6x6')


se = strel('disk', 2);
I1 = imopen(I, se);
subplot(247);
imshow(I1), title('Disk 2')

se = strel('disk', 6);
I1 = imopen(I, se);
subplot(248);
imshow(I1), title('Disk 6')


figure

subplot(131);
imshow(I), title('I - Original')

se = strel('square', 3);
I1 = imclose(I, se);
subplot(132);
imshow(I1), title('I1 - I After Close Square 3x3')

I2 = imclose(I1, se);
subplot(133);
imshow(I2), title('I2 - I1 After Close Square 3x3')

figure

subplot(131);
imshow(I), title('I - Original')

se = strel('square', 3);
I1 = imopen(I, se);
subplot(132);
imshow(I1), title('I1 - I After Open Square 3x3')

I2 = imopen(I1, se);
subplot(133);
imshow(I2), title('I2 - I1 After Open Square 3x3')



figure

se = strel('square', 3);
Ic = imcomplement(I);
Icl = imclose(I, se);
Io = imopen(Ic, se);
subplot(221), imshow(Icl), title('Fermeture')
subplot(222), imshow(imcomplement(Io)), title('Ouverture du complement')

se = strel('square', 3);
Ic = imcomplement(I);
Io = imopen(I, se);
Icl = imclose(Ic, se);
subplot(223), imshow(Io), title('Ouverture')
subplot(224), imshow(imcomplement(Icl)), title('Fermeture du complement')


