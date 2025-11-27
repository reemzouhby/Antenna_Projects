%simulate the radiation pattern ( normalized) for different values l/lamda
%+ directivity  Hertezian dipole 
% first define the theta and fille 
clc; clear; close all;
theta = linspace(0, 2*pi,1000);
phi =linspace(0, 2*pi,1000);
%E pattern 
E= abs(sin(theta));
E_norma=E/max(E);
%plot E vs theta 
figure('Name', 'E vs theta','NumberTitle','off');
%plot in polar coordinates
polarplot(theta, E_norma);
title('Normalized Radiation Pattern (E vs \theta)');
%E vs phi should be a circle 
E_phi=ones(size(phi));
E_phi_norm=E_phi/max(E_phi);
figure('Name','E vs phi','NumberTitle','off'); 
polarplot(phi,E_phi_norm);
title('Hertzian Dipole: E vs \phi (Azimuthal Pattern)');
%3d plot : should be like a donut 
[theta,phi]=meshgrid(theta,phi);
%sph2cart use the spherical coordinate 
%? = ?/2 (equator) ? elevation = 0 ? MATLAB sees it in x–y plane
[X,Y,Z]=sph2cart(phi,pi/2 - theta,sin(theta));
figure('Name','3D Radiation Pattern of Hertzian Dipole','NumberTitle','off'); 
surf(X,Y,Z);

xlabel('X'); ylabel('Y'); zlabel('Z');
shading interp; 