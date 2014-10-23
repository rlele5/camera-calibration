clear
load Rotm
load Trans_rightsideup

R = Rot_rightsideup3;
T = Trans_rightsideup;

E = [R, R*T]

val = 10;
[x y] = meshgrid(-val:1:val, -val:1:val);

v = 2*val+1;

z = x.^2 +y.^2;
figure(2001), surf(z)
xx = reshape(x, 1, v*v);
yy = reshape(y, 1, v*v);
zz = reshape(z, 1, v*v);

m = length(zz);

for i = 1:m, A(i,:) = [ xx(i) yy(i) zz(i) 1]; end

for i = 1:m
    

    %B(i,:) = Rot_rightsideup3 * A(i,:)';
    B(i,:) = E * A(i,:)';
    
    
end


figure(2002), plot3(A(:,1), A(:,2), A(:,3), 'o')
grid on;
figure(2003), plot3(B(:,1), B(:,2), B(:,3), 'o')
grid on;
% xlim([-100 100])
% ylim([-100 100])
%zlim([-5000 5000])







% x = [p1.real3D(1), p2.real3D(1), p3.real3D(1), p4.real3D(1)...
%      p5.real3D(1), p6.real3D(1), p7.real3D(1), p8.real3D(1)...
%      p9.real3D(1), p10.real3D(1), p11.real3D(1), p12.real3D(1)];
%  
% y = [p1.real3D(2), p2.real3D(2), p3.real3D(2), p4.real3D(2)...
%      p5.real3D(2), p6.real3D(2), p7.real3D(2), p8.real3D(2)...
%      p9.real3D(2), p10.real3D(2), p11.real3D(2), p12.real3D(2)];
%  
% z = [p1.real3D(3), p2.real3D(3), p3.real3D(3), p4.real3D(3)...
%      p5.real3D(3), p6.real3D(3), p7.real3D(3), p8.real3D(3)...
%      p9.real3D(3), p10.real3D(3), p11.real3D(3), p12.real3D(3)];
%  
%  scatter3(x,y,z, 'fill', 'red')
%  
%  xlim([-5 5])
%  ylim([-5 8])
%  zlim([-5 5])
%  grid off
%  rotate3d