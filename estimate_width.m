% Estimate the rupture width from Magnitude and faulting

function width = estimate_width(M, faulting)

% Faulting      = 1 for unspecified fault 
%               = 2 for strike-slip fault
%               = 3 for normal fault
%               = 4 for reverse fault

if(faulting == 1)
    
end

if(faulting == 2)
    % Strike slip
    width = 10^(-0.76+0.27*M);
end

if(faulting == 3)
    % Normal fault
    width = 10^(-1.14 + 0.35*M);
end

if(faulting == 4)
    % reverse fault
    width = 10^(-1.61+0.41*M);
end