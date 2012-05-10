% Dip estimation using the rake angle

function dip = estimate_dip(rake)

if(rake >= 30 && rake<= 150)
    %Reverse faulting
    dip = 40;
    return;
end

if(rake >= -120 && rake <= -60)
    %Normal faulting
    dip = 50;
    return;
end

% Strike - slip
dip = 90;
return;