% main_01

% ***NOTE***
% Do not run this script directly.
% Run the script called "run_main"


calib_image = imread(img); % Import image
    [m,n,d] = size(calib_image);


[red_tag, green_tag, blue_tag, black_tag] = tag_colors(calib_image);

figure(1), imshow(calib_image), set(gcf, 'name', 'Camera Calibration Image')

width = 100;
min_pixels = 5;
min_pixels_blue = 40;

% figure(2), imshow(red_tag), set(gcf, 'name', 'Red Tag')
[red.x_pos, red.y_pos] = find_dot_coordinates(red_tag, width, min_pixels);
hold on
plot(round(red.x_pos), round(red.y_pos), 'Marker', 'd', 'MarkerSize', 15, 'Color', 'red', 'LineStyle', 'none', 'LineWidth', 1)


% figure(3), imshow(green_tag), set(gcf, 'name', 'Green Tag')
[green.x_pos, green.y_pos] = find_dot_coordinates(green_tag, width, min_pixels);
hold on
plot(round(green.x_pos), round(green.y_pos), 'Marker', 'd', 'MarkerSize', 15, 'Color', 'green', 'LineStyle', 'none', 'LineWidth', 1)

% figure(4), imshow(blue_tag), set(gcf, 'name', 'Blue Tag')
[blue.x_pos, blue.y_pos] = find_dot_coordinates(blue_tag, width, min_pixels_blue); %Note that I'm using a different threshold here
hold on
plot(round(blue.x_pos), round(blue.y_pos), 'Marker', 'd', 'MarkerSize', 15, 'Color', 'blue', 'LineStyle', 'none', 'LineWidth', 1)

% figure(5), imshow(black_tag), set(gcf, 'name', 'Black Tag')
[black.x_pos, black.y_pos] = find_dot_coordinates(black_tag, width, min_pixels);
hold on
plot(round(black.x_pos), round(black.y_pos), 'Marker', 'd', 'MarkerSize', 15, 'Color', 'cyan', 'LineStyle', 'none', 'LineWidth', 1)

% figure(6), imshow(red_tag + green_tag + blue_tag + black_tag)

red.length = length(red.x_pos);
green.length = length(green.x_pos);
blue.length = length(blue.x_pos);
black.length = length(black.x_pos);

r = red_tag; g = green_tag; blu = blue_tag; bla = black_tag;


% r = calib_image(1:100, (n-99):n, 1);
% g = calib_image(1:100, (n-99):n, 2);
% b = calib_image(1:100, (n-99):n, 3);



