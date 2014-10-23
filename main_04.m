% main_04 - SVD to find Calibration matrix parameters and further
% decomposition to get K, R, and T

fprintf('\n\n%s\n', img);
fprintf('unify = %d\n\n', unify);

[U Sig V] = svd(A);

[m,n] = size(V);
[mm,nn] = size(U);

C_values = V(:,n);

xxx = [1:mm];
yyy = (A*C_values)';


plot_val = 0;
if (plot_val == 1)
    figure(20)
    plot(xxx,yyy, '+')
    hold on
    plot(mm+1, 1, 'd', 'Color', 'red', 'MarkerFaceColor', 'red')
end

% Calibration Matrix = (KR|KRT) = (M|MT)
C = [ V(1:4, 12)'
      V(5:8, 12)'
      V(9:12, 12)' ];
  
% M = KR
M = [ C(1, 1:3)
      C(2, 1:3)
      C(3, 1:3) ];
  
% QR decomposition
[R,Q] = rq(M);

% Intrinsic Parameter matrix K = AB
K = R

% Rotation matrix
Rot = Q;

% Translation Matrix
c4 = C(:,4);
Trans = M^(-1)*c4

% Extrinsic Matrix
E = [Rot, Rot*Trans];











