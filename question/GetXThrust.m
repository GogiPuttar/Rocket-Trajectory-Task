function force = GetXThrust(t,vx,vy,burnTime,massflow)

vexit = 13700;  %exit velocity of gas (m/s)

if ( t < 0 )
force = %Write expression here 4x
elseif (t >=0 && t< burnTime )
force = %Write expression here 5x   % flow rate times exit velocity times cosine of angle
else
force = %Write expression here 6x
end

end

