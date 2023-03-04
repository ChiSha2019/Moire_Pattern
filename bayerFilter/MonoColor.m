clc
clear all
close all

N = 20; %N by N block
%smallest repeatable block white
atom_block = zeros(4,4,3);

%interfering 
atom_block(1,1,1) = 255; %R
atom_block(1,3,1) = 255; %R
atom_block(3,1,1) = 255; %R
atom_block(3,3,1) = 255; %R

moire_block = repmat(atom_block, N, N);
%generate random block

random_block = [];
for i = 1:N
    row = [];
    for j = 1:N
        newrow = randomRedBlock;
        row = [row, newrow];
    end
    random_block = [random_block;row];
end

final_block = horzcat(moire_block,random_block);
%mon_res = get(0,'ScreenSize');
%figure('Position',mon_res)
%figure('units','normalized','outerposition',[0 0 1 1])
set(gcf,'WindowState','fullscreen')
imshow(final_block, 'InitialMagnification', 'fit');
%block with random Red position
function block = randomRedBlock()
    block = zeros(4,4,3);
    % Set the range of values
    lower_bound = 1;
    upper_bound = 16;

    % Generate the random integers
    random_ints = randperm(upper_bound - lower_bound + 1, 4) + lower_bound - 1;
    for num = random_ints
        q = floor((num-1) / 4);
        r = mod((num-1), 4);
        block(q+1,r+1,1) = 255;
    end
end
