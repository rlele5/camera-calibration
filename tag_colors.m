function [red_tag, green_tag, blue_tag, black_tag] = tag_colors(calib_image)


    % d=1 is red
    % d=2 is green
    % d=3 is blue
    [m,n,d] = size(calib_image);
    
    
    red_tag = zeros(m,n);
    green_tag = zeros(m,n);
    blue_tag = zeros(m,n);
    black_tag = zeros(m,n);
    
    % Tag red
    for i = 1:m
        for j = 1:n
            if (calib_image(i,j,1) > 128) && (calib_image(i,j,2) < 64) && (calib_image(i,j,3) < 64)
                red_tag(i,j) = 1;
            end
        end
    end
    
    % Tag green
    for i = 1:m
        for j = 1:n
            if (calib_image(i,j,1) < 40) && (calib_image(i,j,2) > 64) && (calib_image(i,j,3) < 96)
                green_tag(i,j) = 1;
                green_tag(i,j);
            end
        end
    end
    
    % Tag black
    for i = 1:m
        for j = 1:n
            if (calib_image(i,j,1) < 40) && (calib_image(i,j,2) < 40) && (calib_image(i,j,3) < 40)
                black_tag(i,j) = 1;
                black_tag(i,j);
            end
        end
    end
    
    % Tag blue
    for i = 1:m
        for j = 1:n
            if (calib_image(i,j,1) < 100) && (calib_image(i,j,2) < 56) && (calib_image(i,j,3) > 72)
                blue_tag(i,j) = 1;
                blue_tag(i,j);
            end
        end
    end

%     % Adjusting the blue tagging since it also detects black
%     for i = 1:m
%         for j = 1:n
%             if (blue_tag(i,j) == black_tag(i,j))
%                 blue_tag(i,j) = 0;
%             end
%         end
%     end












end