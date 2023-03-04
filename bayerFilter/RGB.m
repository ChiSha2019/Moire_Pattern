%create a RGB matrix with smallest repeatable block white/black
% Define the image size
img_width = 1280;
img_height = 720;

%smallest repeatable block white
white = zeros(4,4,3);
%1st row
white(1,1,1) = 255; %R
white(1,2,2) = 255; %G
white(1,3,1) = 255; %R
white(1,4,2) = 255; %G
% for i=1:3
%     white(1,4,i) = 255; %G
% end


%2nd row
white(2,1,2) = 255; %G
white(2,2,3) = 255; %B
white(2,3,2) = 255; %G
% for i=1:3
%     white(2,3,i) = 255; %G
% end
white(2,4,3) = 255; %B
    


%3rd row is same as 1st row
white(3,:,:) = white(1,:,:);

%4th row is same as 2nd row
white(4,:,:) = white(2,:,:);

white_expanded = repmat(white, 50, 50);
%imshow(white_expanded);

%smallest repeatable block black
black = zeros(4,4,3);

%1st row
black(1,1,2) = 255; %G
black(1,2,3) = 255; %B
black(1,3,2) = 255; %G
black(1,4,3) = 255; %b

%2nd row
black(2,1,1) = 255; %R
black(2,2,2) = 255; %G
black(2,3,1) = 255; %R
black(2,4,2) = 255; %G

%3rd row
black(3,1,2) = 255; %G
black(3,2,3) = 255; %B
black(3,3,2) = 255; %G
black(3,4,3) = 255; %B

%4th row
black(4,1,1) = 255; %R
black(4,2,2) = 255; %G
black(4,3,1) = 255; %R
black(4,4,2) = 255; %G

black_expanded = repmat(black, 50, 50);

white_and_black = horzcat(white_expanded,black_expanded);
imshow(white_and_black);