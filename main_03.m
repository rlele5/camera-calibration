% main_03 - Make the matrix A in A*x = 0

% This system is over-determined.
% 12 points gives us 24 rows.


[A_rows, point_num] = A_row_maker(p1, 1);
A(2*point_num-1:2*point_num, :) = A_rows;

[A_rows, point_num] = A_row_maker(p2, 2);
A(2*point_num-1:2*point_num, :) = A_rows; 

[A_rows, point_num] = A_row_maker(p3, 3);
A(2*point_num-1:2*point_num, :) = A_rows; 

[A_rows, point_num] = A_row_maker(p4, 4);
A(2*point_num-1:2*point_num, :) = A_rows; 

[A_rows, point_num] = A_row_maker(p5, 5);
A(2*point_num-1:2*point_num, :) = A_rows; 

[A_rows, point_num] = A_row_maker(p6, 6);
A(2*point_num-1:2*point_num, :) = A_rows; 

[A_rows, point_num] = A_row_maker(p7, 7);
A(2*point_num-1:2*point_num, :) = A_rows; 

[A_rows, point_num] = A_row_maker(p8, 8);
A(2*point_num-1:2*point_num, :) = A_rows; 

[A_rows, point_num] = A_row_maker(p9, 9);
A(2*point_num-1:2*point_num, :) = A_rows; 

[A_rows, point_num] = A_row_maker(p10, 10);
A(2*point_num-1:2*point_num, :) = A_rows; 

[A_rows, point_num] = A_row_maker(p11, 11);
A(2*point_num-1:2*point_num, :) = A_rows; 

[A_rows, point_num] = A_row_maker(p12, 12);
A(2*point_num-1:2*point_num, :) = A_rows; 