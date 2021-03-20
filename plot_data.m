load subjects\controle-s242\s0242-06012405m.mat
val_ecg = val;
load subjects\controle-s242\S0242A-1-pressurem.mat
val_bp = val;
clear val;

fs_ecg = 1000;
N_ecg = (5*60) * fs_ecg;
t_ecg = (1:N_ecg)/fs_ecg;

fs_bp = 50;
N_bp = (5*60)*fs_bp;
t_bp = (1:N_bp)/fs_bp;


ecg = val_ecg(1,1:N);


bp = val_ecg(2,1:N);

subplot(2,1,1);
plot(t_ecg, ecg);
xlabel('Time(s)');ylabel('mV');

subplot(2,1,2);
plot(t_ecg, bp);
xlabel('Time(s)');ylabel('mV');
