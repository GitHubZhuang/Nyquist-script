% -------------------------------------------------
% A small automatic demonstration of Cauchy Argument Principle
% -------------------------------------------------
 
clear all
m = 160; %Number of points around the circular contour
xoff = -0.75; %X-offset of the contour
yoff = 0; %0.75; %Y-offset of the contour
 
angles = linspace(2*pi,0,m); %Generate angles around the circle
pt =[cos(angles)+xoff;sin(angles)+yoff]; 
figure;
pause(2)
 
for bin = 1:m
    %Set 's' to the next point on the contour
    s = pt(1,bin)+ pt(2,bin)*1i;
    
    %Plot the next point on the contour in the s-plane
    subplot(1, 2, 1);
    plot(real(s), imag(s), 'r.');
    title('S-plane Contour');
    axis([-3 2 -2 2]);
    hold all;
    
    %Define the system transfer function, uncomment the one you're running
    
    %2 poles and 2 zeros
%     tnf = (s^2 + 1.5*s + 0.8125)/((s + 1)*(s + 0.8)); 
%     plot([-1, -.8] , [0 0], 'bx', 'MarkerSize', 10);
%     plot([-0.75 -0.75], [.5 -.5], 'bo', 'MarkerSize', 10);
    
    %2 poles only
%     tnf = 1/((s + 1)*(s + 0.8)); 
%     plot([-1, -.8] , [0 0], 'bx', 'MarkerSize', 10);
    
    % 1 pole
    tnf = 1/((s + 1)); 
    plot([-1] , [0 0], 'bx', 'MarkerSize', 10);
    
    
    %Plot the mapping from the TF in the w-plane
    subplot(1, 2, 2);
    plot(real(tnf), imag(tnf), 'g.');
    plot(0, 0, 'k*', 'MarkerSize', 10)
    title('W-plane Plot');
    axis([-3 2 -3 3]);
    hold all;
    
    %Pause to get a slower animation
    pause(.02);
end


