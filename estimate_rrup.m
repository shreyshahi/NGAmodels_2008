% estimate rjb using rx ztor dip Fhw and width

function Rrup = estimate_rrup(Rx,Ztor,dip,W,Fhw)

if (dip == 90)
    Rrup = sqrt(Rjb^2+Ztor^2);
    return;
end

if(Rx < Ztor*tan(dip*pi/180))
    Rrupp = sqrt(Rx^2 + Ztor^2);
end

if(Rx >= Ztor*tan(dip*pi/180) && Rx <= Ztor*tan(dip*pi/180) + W*sec(dip*pi/180))
   Rrupp = Rx*sin(dip*pi/180) + Ztor*cos(dip*pi/180); 
end

if(Rx > Ztor*tan(dip*pi/180) + W*sec(dip*pi/180))
   Rrupp = sqrt((Rx - W*cos(dip*pi/180))^2 + (Ztor + W*sin(dip*pi/180))^2); 
end

if Fhw == 1
    alpha = 50;
else
    alpha = -50;
end

Ry = abs(Rx * cot(alpha*pi/180));

Rrup = sqrt(Rrupp^2 + Ry^2);