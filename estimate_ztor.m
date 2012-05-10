% Estimate Ztor using Zhyp, Width and dip

function Ztor = estimate_ztor(Zhyp,W,dip)

Ztor = max((Zhyp - 0.6*W*sin(dip)),0);