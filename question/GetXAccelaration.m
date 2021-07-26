
% Codes Adapted and Reuse from Eric Peasley
function a = GetXAcceleration (t,h,vx,vy)

payloadMass = 0.75e6;                % kg
initialFuelMass = 2.15e6;       % kg
burnRate = 7400;   %kg/s linked to massflow in thrust functions
burnTime = initialFuelMass / burnRate;  % seconds

g = GetGravity (h);
f = GetXThrust (t,vx,vy,burnTime,burnRate);
m = GetMass (t,payloadMass,initialFuelMass,burnTime,burnRate);
d = GetXDrag (t,h,vx);

a = (f - d)/m;             % Newton's Second Law
end

