function [] = sphere_plotter(global_points, sphere_radius, flip_z)

r = sphere_radius;


[x, y, z] = sphere;

x = r*x;
y = r*y;
z = r*z;

[m,n] = size(global_points);

figure(1000), set(gcf, 'name', 'Final model')
hold on
%colormap prism

for i = 1:m
    xx = x + global_points(i,3);
    yy = y + global_points(i,2);
    zz = z + global_points(i,1);
    
    if flip_z == 1
        zz = -zz;
    end
    
    h = mesh(xx,yy,zz);
    set(h,'Facecolor','interp')
end

rotate3d on

axis equal
axis tight
axis fill
grid on






end