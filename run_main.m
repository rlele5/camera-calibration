% run_main - Run this script!
% This script runs everything else (except the probe calibration, which is
% a one-time event)
% Set the variable "object_folder_name" to the name of the folder you want
% to reconstruct.
tic
clearvars;
cab;
warning('off', 'all')

% NOTE: Make sure non-image files are removed from this folder.
% (Really, non-"imread"able files should be removed)
object_folder_name = 'box4';
object_folder_name = 'mug2';

homework2_dir = strcat( pwd, '\', object_folder_name);
full_file_name = strcat(homework2_dir, '\', object_folder_name, '.xlsx');

file_list = fuf(homework2_dir, 0, 'detail');

point_ctr = 1;

for file_list_ctr = 1:length(file_list)
    clearvars -except object_folder_name homework2_dir file_list file_list_ctr figs global_points full_file_name point_ctr

    img = char(file_list(file_list_ctr));
    
    unify = 1;
    
    main_01
    
    
    % To skip images whose calibration points aren't detected correctly.
    if( (length(red.x_pos) ~= 3) | (length(green.x_pos) ~= 3) | (length(blue.x_pos) ~= 3) | (length(black.x_pos) ~= 3) )
       continue
    end
    
    main_02
    figs = 1;
    if (figs == 0), cab(1); end
    
    main_03
    main_04
    main_05
    main_06
    
    global_points(point_ctr, :) = global_coord(1:3)';
    point_ctr = point_ctr + 1;


end

full_path = strcat(homework2_dir, '\', object_folder_name, '.xlsx');
%xlswrite(full_path, global_points)

flip_z = 0;
sphere_plotter(global_points, .075, flip_z)

toc