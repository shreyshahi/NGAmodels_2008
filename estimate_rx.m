% estimate Rx based on Rjb, dip, Width, Fhw

function Rx = estimate_rx(Rjb,dip,W,Fhw)

if Fhw == 1
    alpha = 50;
else
    alpha = -50;
end

if (Rjb == 0)
    Rx = 1/2*W*cos(dip*pi/180);
    return;
end

if (alpha > 0)
    if(Rjb*abs(tan(alpha*pi/180)) <= W*cos(dip*pi/180))
        Rx = Rjb*abs(tan(alpha*pi/180));
    else
        Rx = Rjb*tan(alpha*pi/180)*cos(alpha*pi/180 - asin(W*cos(dip*pi/180)*cos(alpha*pi/180)/Rjb));
    end
else 
    Rx = Rjb*sin(alpha*pi/180);
end