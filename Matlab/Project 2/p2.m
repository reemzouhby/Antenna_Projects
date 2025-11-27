%fix d=lamda/2 and N of broadside antenna 2--20 
% Broadside array excited phase =0 
% fix d = lamda /2 ,   beta*d=pi
close all

N=2:20;
theta = linspace(0, 2*pi,1000);
phi = linspace(0, 2*pi, 1000);
[Theta, Phi] = meshgrid(theta, phi);
for i = 1:length(N)
    f=figure;
    subplot(1,2,1)
    a= pi*cos(theta);
    F_af_n = (sin(N(i)/2 *a)) ./( N(i)*(sin(a/2)));
    polarplot(theta,abs(F_af_n),'LineWidth', 1.5)
    title(['2D Polar for N= ',num2str(N(i))]);
    subplot(1,2,2)
    %3d 
    a_3= pi*cos(Theta);
    F_af_3 =abs( (sin(N(i)/2 *a_3)) ./( N(i)*(sin(a_3/2))));
    X=F_af_3 .*sin(Theta).*cos(Phi);
    Y=F_af_3 .*sin(Theta).*sin(Phi);
    Z=F_af_3 .*cos(Theta);
    surf(X,Y,Z)
    shading interp;
    title(['3D Broadside Pattern for N = ', num2str(N(i))]);
    xlabel('X'); ylabel('Y'); zlabel('Z');
    axis equal;
    axis([-1 1 -1 1 -0.5 0.5] * max(abs(F_af_n(:))));% Get the folder where the script is located
    scriptFolder = fileparts(mfilename('fullpath'));
    saveas(f, fullfile(scriptFolder, ['Broadside_Rad_N_', num2str(N(i)), '.png']));

    
    
end 
    
    

