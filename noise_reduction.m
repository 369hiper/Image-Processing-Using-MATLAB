% Noise reduction

A = imread('taj-noise.jpg');

% Get the filter

h_gaussian = fspecial('gaussian');
h_average = fspecial('average');


% Perform filtering
B_gaussian = imfilter(A, h_gaussian);
B_average = imfilter(A, h_average);

% Performing median filtering
A_gray = rgb2gray(A);
B_median = medfilt2(A_gray);

% Plotting the images
figure, subplot(2,2,1), imshow(A), title('Original Image');
subplot(2,2,2), imshow(B_gaussian), title('B_gaussian Image');
subplot(2,2,3), imshow(B_average), title('B_average Image');
subplot(2,2,4), imshow(B_median), title('B_median Image');
