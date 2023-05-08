I = imread('formes.png');

se = strel('square', 20);

b = imopen(I, se);
c = imclose(I, se);

d = imopen(c, se);

subplot(221);
imshow(I), title('a (original)')
subplot(222);
imshow(b), title('b (close a square 20)')
subplot(223);
imshow(c), title('c (open a square 20)')
subplot(224);
imshow(d), title('d (open c square 20)')