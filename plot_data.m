%SUBJECT - CONTROL 242
load subjects\controle-s242\s0242-head-up-tiltm.mat
[ecg_242, t_242] = param_signal(500, 5*60, -4122, 14361.0673195, val(2,300:length(val)));
[abp_242, t_242] = param_signal(500, 5*60, -32649,297.432615385, val(3,300:length(val)));
subplot(4,2,1);
plot(t_242, ecg_242);
xlabel('Time(s)');ylabel('mV');
title('ECG-SUBJECT 242(CONTROL)');
subplot(4,2,2);
plot(t_242, abp_242);
xlabel('Time(s)');ylabel('mmHg');
title('ABP-SUBJECT 242(CONTROL)');


%SUBJECT - CONTROL 243
load subjects\controle-s243\s0243-head-up-tiltm.mat
[ecg_243, t_243] = param_signal(500, 5*60, -4214, 16260.4223844	, val(2,300:length(val)));
[abp_243, t_243] = param_signal(500, 5*60, -31990,368.996173913	, val(3,300:length(val)));
subplot(4,2,3);
plot(t_243, ecg_243);
xlabel('Time(s)');ylabel('mV');
title('ECG-SUBJECT 243(CONTROL)');
subplot(4,2,4);
plot(t_243, abp_243);
xlabel('Time(s)');ylabel('mmHG');
title('ABP-SUBJECT 243(CONTROL)');

%SUBJECT - STROKE 324
load subjects\'stroke- s324'\s0324-head-up-tiltm.mat;
[ecg_324, t_324] = param_signal(500, 5*60, -614, 12937.0027505, val(2,300:length(val)));
[abp_324, t_324] = param_signal(500, 5*60, -50741,344.629626682	, val(3,300:length(val)));
subplot(4,2,5);
plot(t_324, ecg_324);
xlabel('Time(s)');ylabel('mV');
title('ECG-SUBJECT 324(STROKE)');
subplot(4,2,6);
plot(t_324, abp_324);
xlabel('Time(s)');ylabel('mmHG');
title('ABP-SUBJECT 324(STROKE)');

%SUBJECT - STROKE 331
load subjects\'stroke- s331'\s0331-head-up-tiltm.mat;
[ecg_331, t_331] = param_signal(500, 5*60, -11961, 17441.0592991	, val(2,300:length(val)));
[abp_331, t_331] = param_signal(500, 5*60, -38906,296.263257732	, val(3,300:length(val)));
subplot(4,2,7);
plot(t_331, ecg_331);
xlabel('Time(s)');ylabel('mV');
title('ECG-SUBJECT 331(STROKE)');
subplot(4,2,8);
plot(t_331, abp_331);
xlabel('Time(s)');ylabel('mmHG');
title('ABP-SUBJECT 331(STROKE)');