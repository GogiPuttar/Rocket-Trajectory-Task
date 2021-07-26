function mass = GetMass (t,payloadMass,initialFuelMass,burnTime,burnRate)

if ( t <=0 )
mass = %Write expression here 7
elseif (t >0 && t< burnTime )
mass = %Write expression here 8    %Linearly decreasing mass
else
mass = %Write expression here 9

end

