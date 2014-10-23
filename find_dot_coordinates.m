function [x_pos, y_pos] = find_dot_coordinates(tagged_image, width, min_pixels)
    
    x_pos = [];
    y_pos = [];
    
    original = tagged_image;
    
    [m,n] = size(tagged_image);
    
    for i = 1:m
        for j = 1:n
            
            if( tagged_image(i,j) == 1)
                ct = 0;
                sum_x = 0;
                sum_y = 0;
                
                if (i - width) < 1
                    k_low = 1;
                else
                    k_low = i - width;
                end
                
                if (i + width) > m
                    k_high = m;
                else
                    k_high = i + width;
                end
                
                for k = k_low : k_high
                    
                    if (j - width) < 1
                        ell_low = 1;
                    else
                        ell_low = j - width;
                    end
                    
                    if (j + width) > n
                        ell_high = n;
                    else
                        ell_high = j + width;
                    end
                    
                    for ell = ell_low : ell_high
                        
                        if ( tagged_image(k,ell) == 1 )
                            sum_x = sum_x + ell;
                            sum_y = sum_y + k;
                            ct = ct + 1;
                            
                            tagged_image(k,ell) = 0;
                        end
                    end
                end
                
                if (ct >= min_pixels)
                    x_pos( length(x_pos) + 1) = sum_x/ct;
                    y_pos( length(y_pos) + 1) = sum_y/ct;
                end
            end
        end
    end
                        
            
    
    
    
    
    
    





    
    
    
end
    
    
    
    