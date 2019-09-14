nature = imread('fractal.jpg');
image(nature)
R = nature(:,:,1);
G = nature(:,:,2);
B = nature(:,:,3);
% Plotting Sub Plots of Different Channels with the Original Image

% o = subplot(1,4,1), imshow(nature), title('Original')
% R = subplot(1,4,2), imshow(R), title('Red')
% G = subplot(1,4,3), imshow(G), title('Green')
% B = subplot(1,4,4), imshow(B), title('Blue')

% Coversion of Image from Format to Another
A_hsv = rgb2hsv(nature);
image(A_hsv)

% Conversion from RGB to Gray
gray = rgb2gray(nature);
imhist(gray)

R = gray(:,:,1);
imhist(R)
G = gray(:,:,2);
B = gray(:,:,3);
goo
subplot(1,4,4), imhist(gray), title('Original')
subplot(1,4,1), imhist(G), title('Green');
subplot(1,4,2), imhist(R), title('Red');
subplot(1,4,3), imhist(B), title('Blue');

