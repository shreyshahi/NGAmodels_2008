% Estimate Zhyp using Magnitude and style of faulting

function Zhyp = estimate_zhyp(M, faulting)

% Faulting      = 1 for unspecified fault 
%               = 2 for strike-slip fault
%               = 3 for normal fault
%               = 4 for reverse fault

if(faulting == 1)
   Zhyp = 7.08 + 0.61*M;
   return;
end

if(faulting == 2)
    Zhyp = 5.63 + 0.68*M;
    return;
end

Zhyp = 11.24 - 0.2*M;