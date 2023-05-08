I = imread('rice.png');
I2 = im2bw(I, graythresh(I)); %im2bw permet de convertir du niveau de gris en binaire et 
%graythresh() estime automatiquement le seuil pour la binarisation
I3 = imtophat(I,strel('square',12));
I4 = im2bw(I3, graythresh(I3))

subplot(221);
imshow(I);
subplot(222);
imshow(I3);

subplot(223);
imshow(I2);
subplot(224);
imshow(I4);


I = imcomplement(imread('flou_test.png'));
I2 = imbinarize(I, graythresh(I));

I3 = imtophat(I, strel('square', 50));
I4 = imbinarize(I3, graythresh(I3));

I4 = medfilt2(I4, [2 2]);

figure
subplot(121);
imshow(I2);
subplot(122);
imshow(I4);