I = imread('text.png');
ev = imread('ev.png');
eh = imread('eh.png');

subplot(221);
imshow(ev), title('E Vertical')
subplot(222);
imshow(eh), title('E Horizontal')

sev = strel('arbitrary', ev);
EV = imerode(I, sev);

seh = strel('arbitrary', eh);
EH = imerode(I, seh);

subplot(223);
imshow(EV + EH), title('E détectés')

count = sum(EV(:)) + sum(EH(:));

subplot(224);
imshow(I), title(strcat('Il y a ', num2str(count), ' e dans le texte'));