% main_02: Correspondence 3D coordinates to 2D pixels

%cab(1,1000,1001);

fig_num = 10;

[mmm,nnn] = size(red_tag);

p1.real3D = [3 0 0]; %black
p2.real3D = [3 1 0]; %blue  (purple)
[p1, p2] = correspond(p1, p2, black, blue);
% correspondence_plotter(p1, p2, black_tag, blue_tag, fig_num)
fig_num = fig_num + 1;

p3.real3D = [3 4 0]; %red
p4.real3D = [2 4 0]; %black
[p3, p4] = correspond(p3, p4, red, black);
% correspondence_plotter(p3, p4, red_tag, black_tag, fig_num)
fig_num = fig_num + 1;

p5.real3D = [1 6 0]; %blue
p6.real3D = [0 6 0]; %green
[p5, p6] = correspond(p5, p6, blue, green);
% correspondence_plotter(p5, p6, blue_tag, green_tag, fig_num)
fig_num = fig_num + 1;

p7.real3D = [0 0 0]; %green
p8.real3D = [0 0 -1]; %red
[p7, p8] = correspond(p7, p8, green, red);
% correspondence_plotter(p7, p8, green_tag, red_tag, fig_num)
fig_num = fig_num + 1;

p9.real3D = [0 2 -3]; %green
p10.real3D = [0 2 -4]; %black
[p9, p10] = correspond(p9, p10, green, black);
% correspondence_plotter(p9, p10, green_tag, black_tag, fig_num)
fig_num = fig_num + 1;

p11.real3D = [0 5 -3]; %blue
p12.real3D = [0 6 -3]; %red
[p11, p12] = correspond(p11, p12, blue, red);
% correspondence_plotter(p11, p12, blue_tag, red_tag, fig_num)
fig_num = fig_num + 1;


if unify == 1
    p1 = unify_xy(p1, mmm,nnn);
    p2 = unify_xy(p2, mmm,nnn);
    p3 = unify_xy(p3, mmm,nnn);
    p4 = unify_xy(p4, mmm,nnn);
    p5 = unify_xy(p5,mmm,nnn);
    p6 = unify_xy(p6,mmm,nnn);
    p7 = unify_xy(p7,mmm,nnn);
    p8 = unify_xy(p8,mmm,nnn);
    p9 = unify_xy(p9,mmm,nnn);
    p10 = unify_xy(p10,mmm,nnn);
    p11 = unify_xy(p11,mmm,nnn);
    p12 = unify_xy(p12,mmm,nnn);
end

