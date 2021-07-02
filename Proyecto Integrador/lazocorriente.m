sa=tf(1,[Lq/29 1])
opt = stepDataOptions;
opt.StepAmplitude = 0.09068;
step(sa,(0:0.0001:1)', opt);

dd2=stepinfo(sa)