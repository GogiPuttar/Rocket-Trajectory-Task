function mass = GetMass (t,payloadMass,initialFuelMass,burnTime,burnRate)

if ( t <=0 )
mass = payloadMass + initialFuelMass; %Write expression here 7
elseif (t >0 && t< burnTime )
mass = payloadMass + initialFuelMass - burnRate * t; %Write expression here 8    %Linearly decreasing mass
else
mass = payloadMass; %Write expression here 9

end

