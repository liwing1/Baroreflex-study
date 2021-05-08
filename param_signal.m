function [signal, t]= param_signal(fs, Tt, base, gain, sig_array)
    N = Tt * fs;
    t = (1:N)/fs;
    signal = (sig_array(1:N)-base)./gain;
end
