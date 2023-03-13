% Load the image
img = imread('red_apple_with_black_background.jpg');

% Define the downsampling factor
downsample_factor = 8;

% Downsample the image using bicubic interpolation
downsampled_img = imresize(img, 1/downsample_factor, 'bicubic');

% Save the downsampled image to a file
imwrite(downsampled_img, 'downsampled_red_apple.jpg');