I=imread("circles.png");
subplot(221);
imshow(I), title('Original')

I4 = bwmorph(I, 'skel', Inf);
subplot(223);
imshow(I4), title('d4');

I8 = bwmorph(I, 'thin', Inf);
subplot(224);
imshow(I8), title('d8');