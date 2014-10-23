% main_06 - Transforming probe coordinates to global coordinates using
% inverse of Extrinsic matrix

% load probe_tip_calib
% 
% probe_tip_cam_coords_mean = [probe_tip_cam_coords_mean, 1]'

E_sq = [E; 0 0 0 1];

E_sq_inv = E_sq^-1;

% Coordinates from "main_calibrate" when running image
% "p0_6_m10_calibrate4.JPG"
global_coord = E_sq_inv * [-3.7697 1.4253 -0.26539 1]'