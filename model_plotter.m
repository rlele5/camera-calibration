function [] = model_plotter(global_points)

    x_low = -14;
    y_low = -2;
    z_low = 4;
    
    x_width = 4;
    y_width = 6;
    z_width = 6;
    
    figure, plot3(global_points(:,3), global_points(:,2), global_points(:,1), 'o', 'MarkerFaceColor', 'magenta', 'MarkerEdgeColor', 'cyan', 'MarkerSize', 20)
    rotate3d on
    grid on
    
    axis equal
    axis tight
    axis fill

    
    
    DT = delaunayTriangulation(global_points(:,1), global_points(:,2), global_points(:,3));
    [K, v] = convexHull(DT);
    
    figure(4), trisurf(K,DT.Points(:,3),DT.Points(:,2),DT.Points(:,1), 'FaceColor', 'interp');
    rotate3d on

    
    axis equal
    axis tight
    axis fill


end