function [signal, t]= param_signal(fs, ts, base, gain, sig_array);
    N = ts * fs;
    t = (1:N)/fs;
    signal = (sig_array(1:N)-base)./gain;
end
