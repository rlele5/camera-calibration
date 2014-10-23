% This function is to make our camera xyz axes point in the same directions
% as the global coordinate system. In other words, this function just flips
% the x and y coordinates of the image pixels, and also moves the xy (uv)
% pixel origin to the bottom left of the image.

function [pA] = unify_xy(pA, mmm,nnn)

    buff_x = pA.x;
    buff_y = pA.y;
    
    pA.x = mmm - buff_y;
    pA.y = buff_x ;
    
    
%     pA.x = mmm - pA.y-mmm/2;
%     pA.y = buff_x-nnn/2;

end

