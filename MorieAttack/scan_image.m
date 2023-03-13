clc
clear
close all
% Load the JPEG image
cd('image');
img = imread('downsampled_red_apple.jpg');
cd('..');

% Display the image
imshow(img);

% Get the number of rows and columns in the image
[rows, cols, ~] = size(img);

thredthold = 60;
new_img = zeros(24*rows, 24*cols, 3);
% Traverse through all pixels
for row = 1:rows
    for col = 1:cols
        % Access the pixel value at (row, col)
        pixel_red_value = img(row, col, 1);

        if pixel_red_value > thredthold
            new_img((row-1)*24+1:row*24, (col-1)*24+1:col*24,:) = draw_DoNotEnter_withbalck_bg("normal");
        end
        
        % Process the pixel value here
        % ...
    end
end

figure
imshow(new_img);

% Downsample the image by a factor of 2 using nearest point interpolation
%downsampled_img = imresize(new_img, 0.114, 'nearest');
downsampled_img = imresize(new_img, 0.201, 'bilinear');

figure 
imshow(downsampled_img);

