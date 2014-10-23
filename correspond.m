function [pA, pB] = correspond(pA, pB, pA_map, pB_map)

    shortest_len = 10000000000000000000;


    for i = 1 : pA_map.length
        pAx = pA_map.x_pos(i);
        pAy = pA_map.y_pos(i);
        
        for j = 1 : pB_map.length
            pBx = pB_map.x_pos(j);
            pBy = pB_map.y_pos(j);
            
            vec = [(pBx - pAx), (pBy - pAy)];
            len = v_mag(vec);
            
            if (len <= shortest_len)
                pA.x = round(pAx);
                pA.y = round(pAy);
                
                pB.x = round(pBx);
                pB.y = round(pBy);
                
                shortest_len = len;
            end
        end
    end
            
            
            















end