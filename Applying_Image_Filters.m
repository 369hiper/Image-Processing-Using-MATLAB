% Implementation of Image Filters
A = imread('taj-noise.jpg');

B = rgb2gray(A);
image(B)

% Generating an averaging filter
h_average = fspecial('average', 3);

% Generate a Gaussian Filter
h_gaussian = fspecial('gaussian', 3,0.5);

A_average = imfilter(B, h_average);
A_gaussian = imfilter(B, h_gaussian);

% Applying Median 2D Filter
A_median = medfilt2(B);

subplot(2,2,1), imshow(A_guided_filter), title('A_guided_filter');
subplot(2,2,2), imshow(A_gaussian), title('Average_Gaussian');
subplot(2,2,3), imshow(A_median), title('Median_Gaussian');
subplot(2,2,4), imshow(B), title('Original');
 
% Using Edge Preserving Filters 

A_guided_filter = imguidedfilter(A);
% Guided Image Filtering works the best for these
imshowpair(B,A_guided_filter, 'montage');

