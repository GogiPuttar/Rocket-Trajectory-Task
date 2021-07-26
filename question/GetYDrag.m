% Codes Adapted and Reuse from Eric Peasley
function drag = GetYDrag (t,h,vy)
% calculate a quadratic drag
% NB! When v is +ve (up) drag should be +ve ( down )
k = GetDragCoeff (t,h);
drag = k * vy;  %proportional to velocity
end

