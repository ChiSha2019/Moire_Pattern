close all
clear all
clc
%three cases: 1)line thicker than dots 2) line equally thick than dots
%3)line thinner than dots
vLine = verticleLines(50,'W',3);
dots = dotArray(50);
targetSize = length(vLine);
%Two types， multiplication or summation. if mult, pad 0 (simulate grating); if sum, pad 1
%(simulate printer)
dots_pad = padarray(dots,[(targetSize-length(dots))/2,(targetSize-length(dots))/2],0);
product = vLine.*dots_pad;
plotSquare(product)


 

%color can be W,R,G,B
% function [rgb] = horizontalLines(N, color)
%     Red = zeros(2*N,1);
%     if color == 'R'|| color == 'W'
%         Red(1:2:2*N) = 1;
%     end
%     Red = repmat(Red,1,N);
% 
%     Green = zeros(2*N,1);
%     if color == 'G'|| color == 'W'
%         Green(1:2:2*N) = 1;
%     end
%     Green = repmat(Green,1,N);
% 
%     Blue = zeros(2*N,1);
%     if color == 'B'|| color == 'W'
%         Blue(1:2:2*N) = 1;
%     end
%     Blue = repmat(Blue,1,N);
%     
%     rgb = cat(3,Red,Green,Blue);
%     
%     figure,imshow(rgb)
%     set(gcf,'MenuBar','none')
%     set(gca,'DataAspectRatioMode','auto')
%     set(gca,'Position',[0 0 1 1])
% end

%color can be W,R,G,B, period>1
function [result] = verticleLines(N, color, period)
if color == 'W'
    Gray = zeros(1,2*N);
    Gray(1:period:2*N) = 1;
    Gray = repmat(Gray,2*N,1);
    result = Gray;
else
    Red = zeros(1,2*N);
    if color == 'R'
        Red(1:2:2*N) = 1;
    end
    Red = repmat(Red,2*N,1);

    Green = zeros(1,2*N);
    if color == 'G'
        Green(1:2:2*N) = 1;
    end
    Green = repmat(Green,2*N,1);

    Blue = zeros(1,2*N);
    if color == 'B'
        Blue(1:2:2*N) = 1;
    end
    Blue = repmat(Blue,2*N,1);
    
    rgb = cat(3,Red,Green,Blue);
    
    result = rgb;
    
end
    plotSquare(result)
end

%color can be W,R,G,B
function [pic] = dotArray(N)
    pic = zeros(N*2,N*2);
    for r = 2:2:2*N
        for c = 2:2:2*N
            pic(r,c) = 1;
        end
    end
    
    plotSquare(pic)
end

function plotSquare(pic)
    figure,imshow(pic)
    axis square
    set(gca,'DataAspectRatioMode','auto')
    set(gca,'Position',[0 0 1 1])
end
