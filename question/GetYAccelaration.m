
% Codes Adapted and Reuse from Eric Peasley
function a = GetYAcceleration (t,h,vx,vy)

payloadMass = 0.75e6;                % kg
initialFuelMass = 2.15e6;       % kg
burnRate = 4400;   %kg/s linked to massflow in thrust functions
burnTime = initialFuelMass / burnRate;  % seconds

g = GetGravity (h);
f = GetYThrust (t,vx,vy,burnTime,burnRate);
m = GetMass (t,payloadMass,initialFuelMass,burnTime,burnRate);
d = GetYDrag (t,h,vy);
a = (f - m*g -d)/m;             % Newton Second Law
end

