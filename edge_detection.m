% Reading the Image
img = imread('fractal.jpg');

% Conversion of RGB to Gray Scale
gray = rgb2gray(img);

% Sobel Edge Detection
sobel = edge(gray,'sobel');
imhist(sobel)
% image(sobel)

% Prewitt Edge Detection
prewitt = edge(gray, 'prewitt');
image(prewitt)
imhist(prewitt)

% Canny Edge Detection
canny = edge(gray, 'canny');
image(canny)
imhist(canny)
% Plotting Sub Plots of all Edge Detector Techniques
subplot(2,2,1), imshow(gray), title('Gray');
subplot(2,2,2), imshow(sobel), title('Sobel ED');
subplot(2,2,3), imshow(prewitt), title('Prewitt ED');
subplot(2,2,4), imshow(canny), title('Canny ED');

% Generating a Color map
image(img)
% colormap
colormap(map)


% Changing the Color Map
img;
surf(peaks)
colormap winter


img;
surf(peaks)
colormap winter



% Create a figure with two subplots and store the axes handles,
% ax1 and ax2. Use a different colormap for each axes by passing 
% the axes handles to the colormap function. In the upper subplot,
% create a surface plot using the spring colormap. In the lower subplot, 
% create a surface plot using the winter colormap.

figure
ax1 = subplot(2,1,1);
surf(peaks)
colormap(ax1,spring)

ax2 = subplot(2,1,2);
surf(peaks)
colormap(ax2,winter)

surf(double(imresize(leja(:,:,2),[50 50])))

z=exp(1i*(1:100)*2*pi/100);
                p1 = poly(z);
                p2 = poly(leja(z));
     % Computing p1 and p2 should lead to the polynomial x^100-1. 
 
     % leja is by Markus Lang, and is available from the Rice University DSP
     % webpage: www.dsp.rice.edu
     