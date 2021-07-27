fs = 500;
Tt = 30*60;

%SUBJECT - CONTROL 165
load subjects\ctrl\1\s0165-head-up-tiltm.mat
[ecg_165, t_165] = param_signal(fs, Tt, -4098, 14375.299036, val(2,:));
[abp_165, t_165] = param_signal(fs, Tt, -32573, 317.8496, val(3,:));

%SUBJECT - CONTROL 184
load subjects\ctrl\2\s0184-head-up-tiltm.mat
[ecg_184, t_184] = param_signal(fs, Tt, 1813, 13784.8836983, val(2,:));
[abp_184, t_184] = param_signal(fs, Tt, -31696, 365.568, val(3,:));

%SUBJECT - CONTROL 208
load subjects\ctrl\3\s0208-head-up-tiltm.mat
[ecg_208, t_208] = param_signal(fs, Tt, -4030, 14350.1069186, val(2,:));
[abp_208, t_208] = param_signal(fs, Tt, -32635, 332.721230769, val(3,:));

%SUBJECT - CONTROL 164
load subjects\ctrl\4\s0164-head-up-tiltm.mat
[ecg_164, t_164] = param_signal(fs, 24*60+13, -9581, 18662.7081307, val(2,:));
[abp_164, t_164] = param_signal(fs, 24*60+13, -63200, 698.339316527, val(3,:));

%SUBJECT - CONTROL 212
load subjects\ctrl\5\s0212-head-up-tiltm.mat
[ecg_212, t_212] = param_signal(fs, Tt, -4091, 14374.4097904, val(2,:));
[abp_212, t_212] = param_signal(fs, Tt, -32638, 352.256, val(3,:));

%SUBJECT - CONTROL 215
load subjects\ctrl\6\s0215-head-up-tiltm.mat
[ecg_215, t_215] = param_signal(fs, Tt, 1701, 13629.1471461, val(2,:));
[abp_215, t_215] = param_signal(fs, Tt, -32172, 319.622295082, val(3,:));

%SUBJECT - CONTROL 221
load subjects\ctrl\7\s0221-head-up-tiltm.mat
[ecg_221, t_221] = param_signal(fs, Tt, -12218, 16363.2960389, val(2,:));
[abp_221, t_221] = param_signal(fs, Tt, -32463, 262.144, val(3,:));

%SUBJECT - CONTROL 246
load subjects\ctrl\8\s0246-head-up-tiltm.mat
[ecg_246, t_246] = param_signal(fs, Tt, -3183, 15719.2883412, val(2,:));
[abp_246, t_246] = param_signal(fs, Tt, -31895, 321.052764045, val(3,:));

%SUBJECT - CONTROL 343
load subjects\ctrl\9\s0343-head-up-tiltm.mat
[ecg_343, t_343] = param_signal(fs, Tt, -7326, 14635.7213483, val(2,:));
[abp_343, t_343] = param_signal(fs, Tt, -57000, 539.814373895, val(3,:));

%SUBJECT - CONTROL 399
load subjects\ctrl\10\s0399-head-up-tiltm.mat
[ecg_399, t_399] = param_signal(fs, Tt, -11773, 17402.767316, val(2,:));
[abp_399, t_399] = param_signal(fs, Tt, -85673, 923.614175812, val(3,:));




%SUBJECT - STROKE 214
load subjects\strk\1\s0214-head-up-tiltm.mat
[ecg_214, t_214] = param_signal(fs, Tt, -4104, 14372.2904973, val(2,:));
[abp_214, t_214] = param_signal(fs, Tt, -32199, 258.503111111, val(3,:));

%SUBJECT - STROKE 232
load subjects\strk\2\s0232-head-up-tiltm.mat
[ecg_232, t_232] = param_signal(fs, Tt, 1584, 13609.1593278, val(2,:));
[abp_232, t_232] = param_signal(fs, Tt, -32039, 301.963341772, val(3,:));


%SUBJECT - STROKE 240
load subjects\strk\3\s0240-head-up-tiltm.mat
[ecg_240, t_240] = param_signal(fs, Tt, 1924, 13722.292226, val(2,:));
[abp_240, t_240] = param_signal(fs, Tt, -32184, 313.176131148, val(3,:));

%SUBJECT - STROKE 248
load subjects\strk\4\s0248-head-up-tiltm.mat
[ecg_248, t_248] = param_signal(fs, Tt, -6841, 15426.6055566, val(2,:));
[abp_248, t_248] = param_signal(fs, Tt, -32286, 238.809212121, val(3,:));

%SUBJECT - STROKE 322
load subjects\strk\5\s0322-head-up-tiltm.mat
[ecg_322, t_322] = param_signal(fs, Tt, -456, 12973.4940326, val(2,:));
[abp_322, t_322] = param_signal(fs, Tt, -48372, 404.865114806, val(3,:));

%SUBJECT - STROKE 332
load subjects\strk\6\s0332-head-up-tiltm.mat
[ecg_332, t_332] = param_signal(fs, Tt, -2903, 14017.8133792, val(2,:));
[abp_332, t_332] = param_signal(fs, Tt, -55134, 558.204003046, val(3,:));

%SUBJECT - STROKE 334
load subjects\strk\7\s0334-head-up-tiltm.mat
[ecg_334, t_334] = param_signal(fs, Tt, -13236, 17977.2979775, val(2,:));
[abp_334, t_334] = param_signal(fs, Tt, -32523, 319.81568, val(3,:));

%SUBJECT - STROKE 336
load subjects\strk\8\s0336-head-up-tiltm.mat
[ecg_336, t_336] = param_signal(fs, Tt, -11074, 17124.4573356, val(2,:));
[abp_336, t_336] = param_signal(fs, Tt, -32333, 273.486769231, val(3,:));

%SUBJECT - STROKE 352
load subjects\strk\9\s0352-head-up-tiltm.mat
[ecg_352, t_352] = param_signal(fs, Tt, -12351, 17586.5270242, val(2,:));
[abp_352, t_352] = param_signal(fs, Tt, -32514, 394.776380952, val(3,:));

%SUBJECT - STROKE 353
load subjects\strk\10\s0353-head-up-tiltm.mat
[ecg_353, t_353] = param_signal(fs, Tt, -7016, 15605.8584797, val(2,:));
[abp_353, t_353] = param_signal(fs, Tt, -32865, 321.1264, val(3,:));

%SUBJECT - STROKE 358
load subjects\strk\11\s0358-head-up-tiltm.mat
[ecg_358, t_358] = param_signal(fs, Tt, -6401, 15332.0512511, val(2,:));
[abp_358, t_358] = param_signal(fs, Tt, -45655, 388.513324747, val(3,:));

%SUBJECT - STROKE 363
load subjects\strk\12\s0363-head-up-tiltm.mat
[ecg_363, t_363] = param_signal(fs, Tt, -3192, 14045.1246377, val(2,:));
[abp_363, t_363] = param_signal(fs, Tt, -53062, 411.526336634, val(3,:));

%SUBJECT - STROKE 374
load subjects\strk\13\s0374-head-up-tiltm.mat
[ecg_374, t_374] = param_signal(fs, Tt, -13195, 17939.4488392, val(2,:));
[abp_374, t_374] = param_signal(fs, Tt, -48152, 434.599724138, val(3,:));

%SUBJECT - STROKE 389
load subjects\strk\14\s0389-head-up-tiltm.mat
[ecg_389, t_389] = param_signal(fs, Tt, -13301, 17998.3602709, val(2,:));
[abp_389, t_389] = param_signal(fs, Tt, -59131, 525.164469301, val(3,:));
%Plot subjects
%{
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