function [A_rows, point_num] = A_row_maker(point_struct, point_num)

    p = point_struct;

    % Of the form:   
    % A_u_i = [-Xi   -Yi   -Zi   1   0   0   0   0   ui*Xi  ui*Yi   ui*Zi   ui]
    % Where ui is the pixel coordinate
    A_u_i = [-p.real3D(1), -p.real3D(2), -p.real3D(3), -1, 0, 0, 0, 0, p.x*p.real3D(1), p.x*p.real3D(2), p.x*p.real3D(3), p.x];


    % Of the form:   
    % A_v_i = [0   0   0   0   -Xi   -Yi   -Zi   1   vi*Xi  vi*Yi   vi*Zi   vi]
    % Where ui is the pixel coordinate
    A_v_i = [0, 0, 0, 0, -p.real3D(1), -p.real3D(2), -p.real3D(3), -1,  p.y*p.real3D(1), p.y*p.real3D(2), p.y*p.real3D(3), p.y];














    A_rows = [ A_u_i
               A_v_i];

end