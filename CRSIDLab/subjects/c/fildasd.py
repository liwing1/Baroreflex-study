baseName = "BRS_S"
numName = 0
extName = ".txt"

for numName in range(402):
    fileName = baseName + str(numName) + extName
    try:
        f = open(fileName, encoding = 'utf-8')
        lines = f.readlines()
        for i in range(len(lines)):
            lines[i] = lines[i].replace('.',',')

        f = open(fileName, 'w')
        for line in lines:
            f.write(line)
        
        print("Sucesso!")
        f.close()
    except:
        print(fileName + " Falhou")
        
