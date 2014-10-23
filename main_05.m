% main_05 - Camera coordinate system

%cab(1,1000,1001, 1002);

%point = E*
point = p1; test = C*[point.real3D(1) point.real3D(2) point.real3D(3) 1]'; pixels = test/test(3); point;
ratio(1) = pixels(1)/point.x; ratio(2) = pixels(2)/point.y; ratio_array(1,:) = ratio;
point = p2; test = C*[point.real3D(1) point.real3D(2) point.real3D(3) 1]'; pixels = test/test(3); point;
ratio(1) = pixels(1)/point.x; ratio(2) = pixels(2)/point.y; ratio_array(2,:) = ratio;
point = p3; test = C*[point.real3D(1) point.real3D(2) point.real3D(3) 1]'; pixels = test/test(3); point;
ratio(1) = pixels(1)/point.x; ratio(2) = pixels(2)/point.y; ratio_array(3,:) = ratio;
point = p4; test = C*[point.real3D(1) point.real3D(2) point.real3D(3) 1]'; pixels = test/test(3); point;
ratio(1) = pixels(1)/point.x; ratio(2) = pixels(2)/point.y; ratio_array(4,:) = ratio;
point = p5; test = C*[point.real3D(1) point.real3D(2) point.real3D(3) 1]'; pixels = test/test(3); point;
ratio(1) = pixels(1)/point.x; ratio(2) = pixels(2)/point.y; ratio_array(5,:) = ratio;
point = p6; test = C*[point.real3D(1) point.real3D(2) point.real3D(3) 1]'; pixels = test/test(3); point;
ratio(1) = pixels(1)/point.x; ratio(2) = pixels(2)/point.y; ratio_array(6,:) = ratio;
point = p7; test = C*[point.real3D(1) point.real3D(2) point.real3D(3) 1]'; pixels = test/test(3); point;
ratio(1) = pixels(1)/point.x; ratio(2) = pixels(2)/point.y; ratio_array(7,:) = ratio;
point = p8; test = C*[point.real3D(1) point.real3D(2) point.real3D(3) 1]'; pixels = test/test(3); point;
ratio(1) = pixels(1)/point.x; ratio(2) = pixels(2)/point.y; ratio_array(8,:) = ratio;
point = p9; test = C*[point.real3D(1) point.real3D(2) point.real3D(3) 1]'; pixels = test/test(3); point;
ratio(1) = pixels(1)/point.x; ratio(2) = pixels(2)/point.y; ratio_array(9,:) = ratio;
point = p10; test = C*[point.real3D(1) point.real3D(2) point.real3D(3) 1]'; pixels = test/test(3); point;
ratio(1) = pixels(1)/point.x; ratio(2) = pixels(2)/point.y; ratio_array(10,:) = ratio;
point = p11; test = C*[point.real3D(1) point.real3D(2) point.real3D(3) 1]'; pixels = test/test(3); point;
ratio(1) = pixels(1)/point.x; ratio(2) = pixels(2)/point.y; ratio_array(11,:) = ratio;
point = p12; test = C*[point.real3D(1) point.real3D(2) point.real3D(3) 1]'; pixels = test/test(3); point;
ratio(1) = pixels(1)/point.x; ratio(2) = pixels(2)/point.y; ratio_array(12,:) = ratio;