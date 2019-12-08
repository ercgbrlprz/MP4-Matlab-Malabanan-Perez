% malabanan, angelo - perez, eric
% 2ece-a
% ece2112 machine problem 4 (matlab solution)

function [] = MP4_ML_MALABANAN_PEREZ(Yi,Vi,theta,Ax,Ay)

if Ay==0
    error('Error. Acceleration in Y cannot be zero.')
end

tf = ((-Vi*sind(theta)) + sqrt((Vi*sind(theta))^2-2*Ay*Yi)) / Ay;

if tf<=0
    tf = ((-Vi*sind(theta)) - sqrt((Vi*sind(theta))^2-2*Ay*Yi)) /Ay;
end

t = 0 : 0.001 : tf;
ypos = Yi + Vi.*sind(theta).*t + 0.5.*Ay.*t.^2;
xpos = Vi.*cosd(theta).*t + 0.5.*Ax.*t.^2;

plot(xpos,ypos,'g')
grid on
xlabel 'Position in X'; 
ylabel 'Position in Y'; 
title 'Projectile Motion'
end