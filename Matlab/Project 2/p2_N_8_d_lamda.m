%here d/lamda = 0.1 , 0.2, 0.3 , 0.4 , 0.5 , 0.6, 0.7,0.8, 0.9 , 1, 1.5, 2
%N=8
d_lamda= [0.1 , 0.2, 0.3 , 0.4 , 0.5 , 0.6, 0.7,0.8, 0.9 , 1, 1.5, 2];
close all
N=8;
theta = linspace(0, 2*pi,1000);
phi = linspace(0, 2*pi, 1000);
[Theta, Phi] = meshgrid(theta, phi);
for i = 1:length(d_lamda)
    f=figure;
    subplot(1,2,1)
    a= 2*pi*d_lamda(i)*cos(theta);
    F_af_n = (sin(N/2 *a)) ./( N*(sin(a/2)));
    polarplot(theta,abs(F_af_n),'LineWidth', 1.5)
    title(['2D Polar for d/\lambda= ',num2str(d_lamda(i))]);
    subplot(1,2,2)
    %3d 
    a_3= 2*pi*d_lamda(i)*cos(Theta);
    F_af_3 =abs((sin(N/2 *a_3)) ./( N*(sin(a_3/2))));
    X=F_af_3 .*sin(Theta).*cos(Phi);
    Y=F_af_3 .*sin(Theta).*sin(Phi);
    Z=F_af_3 .*cos(Theta);
    surf(X,Y,Z)
    shading interp;
    title(['3D Broadside Pattern for d/\lambda= ', num2str(d_lamda(i))]);
    xlabel('X'); ylabel('Y'); zlabel('Z');
    axis equal;
    axis([-1 1 -1 1 -0.5 0.5] * max(abs(F_af_n(:))));% Get the folder where the script is located
    scriptFolder = fileparts(mfilename('fullpath'));
    saveas(f, fullfile(scriptFolder, ['Broadside_Rad_D_', num2str(d_lamda(i)), '.png']));

    
    
end 
    
    

