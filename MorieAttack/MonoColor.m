clc
clear all
close all

N = 30; %N by N block, N is integer of 1080/4
%smallest repeatable block white
%atom_block = zeros(16,16,3);

%interfering 
% atom_block(1,1,1) = 255; %R
% atom_block(1,2,1) = 255; %R
% atom_block(1,3,1) = 255; %R
% atom_block(1,4,1) = 255; %R
% atom_block(1,5,1) = 255; %R
% atom_block(2,3,1) = 255; %R
% atom_block(3,3,1) = 255; %R
% atom_block(4,3,1) = 255; %R

% 8*8 circle
% atom_block(1,4,1) = 255; %R
% atom_block(1,5,1) = 255; %R
% atom_block(2,3,1) = 255; %R
% atom_block(2,6,1) = 255; %R
% atom_block(3,2,1) = 255; %R
% atom_block(3,7,1) = 255; %R
% atom_block(4,:,:) = atom_block(3,:,:);
% atom_block(5,:,:) = atom_block(2,:,:);
% atom_block(6,:,:) = atom_block(1,:,:);


% for i = 1:4
%     for j = 1:4
%         if atom_block(i,j,2) ~= 255
%             atom_block(i,j,3) = 0;
%         end
%     end
% end
% 
% atom_block2 = atom_block;
% 
% for i = 1:4
%     for j = 1:4
%         if atom_block2(i,j,1) ~= 255
%             atom_block2(i,j,1:3) = 0;
%         end
%     end
% end

atom_block = drawCircle;
atom_block = [atom_block,zeros(10,10,3);zeros(10,10,3),zeros(10,10,3)];
moire_block = repmat(atom_block, N, N);
%moire_block2 = repmat(atom_block2, N, N);
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

% first_row_block = horzcat(random_block, random_block, random_block);
% second_row_block = horzcat(random_block, moire_block,random_block);
% third_row_block = first_row_block;
% final_block = vertcat(first_row_block, second_row_block, third_row_block);

imshow(moire_block, 'InitialMagnification', 'fit');
%figure;
%imshow(moire_block2, 'InitialMagnification', 'fit');
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
