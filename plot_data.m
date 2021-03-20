load subjects\controle-s242\s0242-06012405m.mat
val_5 = val;
load subjects\controle-s242\s0242-06012407m.mat
val_7 = val;
clear val;

fs = 1000;
N = (16*60+40) * fs;
t = (1:N)/fs;

ecg_05 = val_5(1,:);
ecg_15 = val_5(2,:);

subplot(2,1,1);
plot(t, ecg_05);
xlabel('Time(s)');ylabel('mV');

subplot(2,1,2);
plot(t, ecg_15);
xlabel('Time(s)');ylabel('mV');
