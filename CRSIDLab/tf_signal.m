tempo = patient.sig.ecg.rri.time;
rri_detrend = detrend(patient.sig.ecg.rri.data); % retira trend linear do rri
sbp_detrend = detrend(patient.sig.bp.sbp.data); % retira trend linear do sbp
% Janelamento antes de se calcular a FFT:
N = length(rri_detrend);
u = sbp_detrend.*hanning(length(sbp_detrend)); % esta será a entrada X(s);
y = rri_detrend.*hanning(length(rri_detrend)); % esta será a saída Y(s)

lu = length(u);ly = length(y);
if(lu > ly)
    for k = 1:(lu-ly)
        u(end) = [];
    end
else
    if(lu < ly)
        for k = 1:(ly-lu)
            y(end) = [];
        end
    end
end


fs = 4; % em Hz; frequencia de reamostragem

T = N/fs; % Tempo de observação, = N*dt, onde dt = 1/fs = 1/4 s
U = fft(u);
U = U(2:(floor(N/2)+1));   % Usar apenas metade do vetor. U(1) representa o valor médio
Suu = 1/N*real(conj(U).*U);   %PSD é real por definição(a parte imaginária deve ser muito pequena)
 
Y = fft(y);  %FFT = Fast Fourier Transform
Y = Y(2:(floor(N/2)+1));
Syy=1/N*real(conj(Y).*Y); % Densidade espectral de potencia (PSD) de y 
 
Suy=1/N*conj(U).*Y; % Densidade espectral de potência cruzada (CPSD) de u e y
f=(1:floor(N/2)).'/T;  % Vetor de frequências
Hsbp=Suy./Suu;     % Estimativa para função de resposta em frequência (FRF)
Csbp=abs(Suy).^2./(Suu.*Syy);  % Estimativa para a coerência  

% Plotando a função resposta em frequência (FRF) e a coerência 
% (seguindo o modelo implementado em "Lec3_SmoothSuu.m":

% Veja que o fato da coerência dar sempre 1 é um “problema” da FFT sem média alguma. 
% Fazendo pelo método de Welch:

%%          * MÉTODO DE WELCH *
% Resumo: Divide o sinal em vários trechos. Esses trechos são organizados de forma a 
% ficarem com determinada percentagem de seu comprimento sobreposta ao trecho 
% anterior. Assim, o método calcula o espectro aplicando a transformada de Fourier 
% nesses trechos menores do sinal. 
% Aqui, utiliza-se 50% de sobreposição e 8 trechos do sinal.
%%
 
[SuuW,fw1] = cpsd(u,u,[],[],[],4);
[SyyW,fw2] = cpsd(y,y,[],[],[],4);
[SuyW,fw3] = cpsd(u,y,[],[],[],4);
 
%%% Função de transferência
HWsbp=SuyW./SuuW;
CWsbp=abs(SuyW).^2./(SuuW.*SyyW);

% Plotando o resultado (como em "Lec3_SmoothSuu.m"):
%{
figure(3)
subplot(311)
loglog(fw1,abs(HWsbp));grid;
title('Welch Module');
subplot(312)
semilogx(fw1,angle(HWsbp)*180/pi); grid;
title('Welch Phase');
subplot(313)
semilogx(fw1,CWsbp);title('Coherence'); grid % COMPARE COM AS FIGURAS DO FFT
%}
%%          Cálculo das áreas de BF (baixa frequencia) e AF (alta frequencia) da FT:
% (continuação)

HWsbp_lf = zeros(size(HWsbp));
HWsbp_hf = zeros(size(HWsbp));

for i = 1:length(HWsbp)
    if (fw1(i)>= 0.04) && (fw1(i) <= 0.15)
        HWsbp_lf(i) = abs(HWsbp(i));
    else
        HWsbp_lf(i) = 0;
    end
    if (fw1(i)> 0.15) && (fw1(i) <= 0.4)
        HWsbp_hf(i) = abs(HWsbp(i));
    else
        HWsbp_hf(i) = 0;
    end
end

BRS_H_LF = trapz(HWsbp_lf);
BRS_H_HF = trapz(HWsbp_hf);
BRS_H_M = (BRS_H_LF + BRS_H_HF)/2;

%%          Cálculo das áreas de BF (baixa frequencia) e AF (alta frequencia) da FT:
% (continuação)
% Considerando apenas os pontos com coerência acima de 0,5:
%
HWsbp_lf_c = zeros(size(HWsbp));
HWsbp_hf_c = zeros(size(HWsbp));

for i = 1:length(HWsbp)
    if (fw1(i)>= 0.04) && (fw1(i) <= 0.15) && (CWsbp(i) > 0.5)
        HWsbp_lf(i) = abs(HWsbp(i));
    else
        HWsbp_lf(i) = 0;
    end
    if (fw1(i)> 0.15) && (fw1(i) <= 0.4) && (CWsbp(i) > 0.5)
        HWsbp_hf(i) = abs(HWsbp(i));
    else
        HWsbp_hf(i) = 0;
    end
end
BRS_H_LF_c = trapz(HWsbp_lf);
BRS_H_HF_c = trapz(HWsbp_hf); 
BRS_H_M_c = (BRS_H_LF_c + BRS_H_HF_c)/2;

filename = sprintf('BRS_S%i.txt',14);
save(filename, 'BRS_H_HF', 'BRS_H_LF', 'BRS_H_M', 'BRS_H_HF_c', 'BRS_H_LF_c', 'BRS_H_M_c', '-ascii');
clear all;
% Observe que, para o paciente utilizado como exemplo, não houve nenhum valor de coerência > 0,5 no intervalo de BF.
