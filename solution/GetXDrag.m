% Codes Adapted and Reuse from Eric Peasley
function drag = GetXDrag (t,h,vx)
% calculate a quadratic drag
% NB! When v is +ve (up) drag should be +ve ( down )
k = GetDragCoeff (t,h);
drag = k * vx;  %proportional to velocity
end

