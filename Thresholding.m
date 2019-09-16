A = imread('fractal.jpg');

% Convert to Gray Scale
A_gray = rgb2gray(A);

% Convert to Double Format

A_gray = im2double(A_gray);

% Get Otsu_level Threash

otsu_level = graythresh(A_gray);

% Output the binary
B_otsu_thresh = im2bw(A_gray, otsu_level);
B_thresh_50 = im2bw(A_gray, 50/255);
B_thresh_100 = im2bw(A_gray, 100/255);
B_thresh_150 = im2bw(A_gray, 150/225);
B_thresh_200 = im2bw(A_gray, 200/255);

figure,subplot(2,3,1), imshow(A_gray), title('Original');
subplot(2,3,2), imshow(B_otsu_thresh), title('Binary image using Otsu threshold value');
subplot(2,3,3), imshow(B_thresh_50), title('Binary Image usingThreshold value=50');
subplot(2,3,4), imshow(B_thresh_100), title('Binary Image usingThreshold value=100');
subplot(2,3,5), imshow(B_thresh_150), title('Binary Image usingThreshold value=150');
subplot(2,3,6), imshow(B_thresh_200), title('Binary Image usingThreshold value=200');
