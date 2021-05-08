%%          Cálculo das áreas de BF (baixa frequencia) e AF (alta frequencia) da FT:
% (continuação)

close all; clear all; clc;

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

area_H_LF = trapz(HWsbp_lf);
area_H_HF = trapz(HWsbp_hf);

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
area_H_LF_c = trapz(HWsbp_lf);
area_H_HF_c = trapz(HWsbp_hf); 

% Observe que, para o paciente utilizado como exemplo, não houve nenhum valor de coerência > 0,5 no intervalo de BF.
