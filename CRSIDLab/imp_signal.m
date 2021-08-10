load subjects/c/c0044.mat
filename = sprintf('BRS_t_S%i.txt', 14);

imp = patient.sys.sys1.models.model1.imResp.impulse{1,1};
imp = [imp.' zeros(1,1198-length(imp))];
L = length(imp);

fw1 = (1:L/2+1);
HWsbp = 2*abs(fft(imp))/L;
HWsbp = HWsbp(1:L/2+1);


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
BRS_H_M = (BRS_H_HF + BRS_H_LF)/2;


save(filename, 'BRS_H_HF', 'BRS_H_LF', 'BRS_H_M', '-ascii');
%clear all;
