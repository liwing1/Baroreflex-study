import pandas as pd

numName = 0
extName = "_sys1_lbf_model2_imresp_info.txt"
dic = {"HF":[], "LF":[], "MF":[]}

for numName in range(400):
    fileName = "s" + "{0:04d}".format(numName) + extName
    try:
        f = open(fileName, encoding = 'utf-8')
        line = f.readlines()
        
        line = line[1].split('\t')
        LF = float(line[2])
        HF = float(line[3])
        MF = (LF+HF)/2
        

        dic["HF"].append(HF)
        dic["LF"].append(LF)
        dic["MF"].append(MF)
        
        print("Sucesso!")
        f.close()
    except:
        print(fileName + " Falhou")

df = pd.DataFrame(dic)
df.to_excel("data.xlsx")    
        
