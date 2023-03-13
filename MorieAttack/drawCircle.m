function display = drawCircle()
    display = zeros(12,12,3);
    display(2,5:6,1) = 255;
    display(3,4:6,1) = 255;
    display(4,3:6,1) = 255;
    display(5,2:6,1) = 255;
    display(6,2:6,1) = 255;

    display(7:12,:,1) = display(6:-1:1,:,1);
    display(:,7:12,:) = display(:,6:-1:1,:);

    %white line
    display(5:8,4:9,1:3) = 255;
end

