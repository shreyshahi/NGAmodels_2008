% estimate the Z1.0 using Vs30

function z10 = estimate_z10(Vs30)

if Vs30 < 180
   z10 = exp(6.745); 
   return;
end

if Vs30 <= 500
    z10 = exp(6.745 - 1.35*log(Vs30/180));
    return;
end

z10 = exp(5.394 - 4.48*log(Vs30/500));