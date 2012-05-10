% estimate the Z1.0 parameter using VS30 for CY08 model

function z10 = estimate_z10_cy(Vs30)

z10 = exp(28.5 - 3.28/8*log(Vs30^8 + 378.7^8));