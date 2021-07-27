for i = 11:14
    filename = sprintf('BRS_t_S%i.mat',i);
    load("subjects\strk\" + filename);
    
    fileout = sprintf('BRS_t_C%i.txt',i);
    save("subjects\strk\" + fileout, 'BRS_H_HF', 'BRS_H_LF', 'BRS_H_M', '-ascii');
end