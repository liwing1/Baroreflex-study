function [Hsbp, Csbp] = tf_signal()
%tempo = patient.sig.ecg.rri.time;
rri_detrend = detrend(patient.sig.ecg.rri.data); % retira trend linear do rri
sbp_detrend = detrend(patient.sig.bp.sbp.data); % retira trend linear do sbp
% Janelamento antes de se calcular a FFT:
N = length(rri_detrend);
u = sbp_detrend.*hanning(length(sbp_detrend)); % esta será a entrada X(s)
y = rri_detrend.*hanning(length(rri_detrend)); % esta será a saída Y(s)
fs = 4; % em Hz; frequencia de reamostragem

T = N/fs; % Tempo de observação, = N*dt, onde dt = 1/fs = 1/4 s
U = fft(u);
U = U(2:((N/2)+1));   % Usar apenas metade do vetor. U(1) representa o valor médio
Suu = 1/N*real(conj(U).*U);   %PSD é real por definição(a parte imaginária deve ser muito pequena)

Y = fft(y);  %FFT = Fast Fourier Transform
Y = Y(2:((N/2)+1));

Syy=1/N*real(conj(Y).*Y); % Densidade espectral de potencia (PSD) de y 

Suy=1/N*conj(U).*Y; % Densidade espectral de potência cruzada (CPSD) de u e y
f=(1:(N/2)).'/T;  % Vetor de frequências
Hsbp=Suy./Suu;     % Estimativa para função de resposta em frequência (FRF)
Csbp=abs(Suy).^2./(Suu.*Syy);  % Estimativa para a coerência  

% Plotando a função resposta em frequência (FRF) e a coerência 
% (seguindo o modelo implementado em "Lec3_SmoothSuu.m":

figure(2)
subplot(311)
loglog(f,abs(Hsbp)); grid;
subplot(312)
semilogx(f,angle(Hsbp)*180/pi); grid
subplot(313)
semilogx(f,Csbp),grid; hold on

end