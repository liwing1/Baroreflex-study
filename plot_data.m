fs = 500;
Tt = 30*60;

%SUBJECT - CONTROL 221
load subjects\controle-s221\s0221-head-up-tiltm.mat
[ecg_221, t_221] = param_signal(fs, Tt, -12218, 16363.2960389, val(2,:));
[abp_221, t_221] = param_signal(fs, Tt, -32463, 262.144, val(3,:));


%SUBJECT - CONTROL 399
load subjects\controle-s399\s0399-head-up-tiltm.mat
[ecg_399, t_399] = param_signal(fs, Tt, -11773, 17402.767316	, val(2,:));
[abp_399, t_399] = param_signal(fs, Tt, -85673,923.614175812	, val(3,:));

%SUBJECT - STROKE 388
load subjects\stroke-s388\s0388-head-up-tiltm.mat;
[ecg_388, t_388] = param_signal(fs, Tt, -388, 12962.6765058, val(2,:));
[abp_388, t_388] = param_signal(fs, Tt, -55472,525.793243816	, val(3,:));


%SUBJECT - STROKE 389
load subjects\stroke-s389\s0389-head-up-tiltm.mat;
[ecg_389, t_389] = param_signal(fs, Tt, -13301, 17998.3602709	, val(2,:));
[abp_389, t_389] = param_signal(fs, Tt, -59131,525.164469301	, val(3,:));

cd CRSIDLab;
crsidlab;

%Plot subjects
%{
subplot(4,2,1);
plot(t_221, ecg_221);
xlabel('Time(s)');ylabel('mV');
title('ECG-SUBJECT 221(CONTROL)');
subplot(4,2,2);
plot(t_221, abp_221);
xlabel('Time(s)');ylabel('mmHg');
title('ABP-SUBJECT 221(CONTROL)');


subplot(4,2,3);
plot(t_399, ecg_399);
xlabel('Time(s)');ylabel('mV');
title('ECG-SUBJECT 399(CONTROL)');
subplot(4,2,4);
plot(t_399, abp_399);
xlabel('Time(s)');ylabel('mmHG');
title('ABP-SUBJECT 399(CONTROL)');


subplot(4,2,5);
plot(t_388, ecg_388);
xlabel('Time(s)');ylabel('mV');
title('ECG-SUBJECT 388(STROKE)');
subplot(4,2,6);
plot(t_388, abp_388);
xlabel('Time(s)');ylabel('mmHG');
title('ABP-SUBJECT 388(STROKE)');


subplot(4,2,7);
plot(t_389, ecg_389);
xlabel('Time(s)');ylabel('mV');
title('ECG-SUBJECT 389(STROKE)');
subplot(4,2,8);
plot(t_389, abp_389);
xlabel('Time(s)');ylabel('mmHG');
title('ABP-SUBJECT 389(STROKE)');
%}