function force = GetYThrust(t,vx,vy,burnTime,massflow)

vexit = 13700;  %exit velocity of gas (m/s) 

if ( t < 0 )
force = 0; %Write expression here 4y
elseif (t >=0 && t< burnTime )
force = massflow * vexit * sin(atan(vy/vx)); %Write expression here 5y  % mass flow rate times exit velocity times sine of angle
else
force = 0; %Write expression here 6y
end

end

