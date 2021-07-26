% Your job is to fill all the 12 blanks marked with "Write expression here"
% Ping me if you face any problems 
% ==== ========== =====================
% Define variables:
% conv -- Degrees to radians conv factor
% ii, jj -- Loop index
% index -- Location of maximum range in array
% maxangle --Anglethatgivesmaximumrange(deg)
% maxrange -- Maximum range (m)
% range -- Range for a particular angle (m)
% t -- Time (s)
% theta -- Initial angle (deg)
% vo -- Initial velocity (m/s)
% vxo -- X-component of initial velocity (m/s)
% vyo -- Y-component of initial velocity (m/s)
% x -- 2-D array containing X-position of rocket (m) at every moment for
% every angle theta
% y -- 2-D array containing Y-position of rocket (m) at every moment for
% every angle theta

% Define Constants
conv = pi / 180;                          % Degrees-to-radians conversion factor
vo = 20;                                      % Initial velocity

%Create an array to hold ranges

range = zeros(1,91);

%Create an array to hold x and y charts for every moment

x = zeros(91,1500);
y = zeros(91,1500);

% Calculate values in x and y

for ii = 1:91
theta = ii - 1;

vxo = %Write expression here 1
vyo = %Write expression here 2

for dt = 1:1499 %1500 steps of time
    t = dt * 0.1;   %Duration of each step is 0.1 s    
    vxo = vxo + GetXAccelaration(t,y,vxo,vyo)*0.1;  %v = u + at
    vyo = vyo + GetYAccelaration(t,y,vxo,vyo)*0.1;  %v = u + at

    x(ii,dt + 1) = x(ii,dt) + vxo * 0.1;    %x = x0 + vt
    y(ii,dt + 1) = y(ii,dt) + vyo * 0.1;    %x = x0 + vt

    if y(ii,dt + 1) <= 0    
        range(ii) = x(ii,dt);   %maximum x alotted to range
        break;
    end

end

end

% Write out table of ranges

fprintf ('Range versus angle theta:\n');
for ii = 1:1:91
theta = ii - 1;
fprintf(' %2d %8.4f\n',theta, range(ii));
end

% Calculate the maximum range and angle

[maxrange, index] = %Write expression here 3
maxangle = index - 1;
fprintf ('\nMax range is %8.4f at %2d degrees.\n',...
maxrange, maxangle);

% Now plot the trajectories
for ii = 5:10:85    
  
theta = ii;

plot(x(ii,:),y(ii,:),'b');

if ii == 5
    hold on;
end

end
% Add titles and axis lables

title ('\bfTrajectory of Rocket vs Initial Angle \theta');
xlabel ('\bf\itx \rm\bf(meters)');
ylabel ('\bf\ity \rm\bf(meters)');
 
grid on;
 
% Now plot the max range trajectory

plot(x(maxangle + 1,:),y(maxangle + 1,:),'r','LineWidth',3.0);
hold off


