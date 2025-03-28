import pdfplumber
import pandas as pd
import zipfile
import os

pdf_file = "anexo_1.pdf"
csv_file = "tabela_extraida.csv"

colunas = [
    "PROCEDIMENTO", "RN (alteração)", "VIGÊNCIA", "OD", "AMB",
    "HCO", "HSO", "REF", "PAC", "DUT", "SUBGRUPO", "GRUPO", "CAPÍTULO"
]

with pdfplumber.open(pdf_file) as pdf:
    tabelas = [] 
    for page in pdf.pages:
        tabela = page.extract_table()
        if tabela:
            tabelas.extend(tabela[1:]) 
    
if tabelas:
    df = pd.DataFrame(tabelas, columns=colunas)  

    df.replace({"OD": "Seg. Odontológica", "AMB": "Seg. Ambulatorial"}, inplace=True)

    df.to_csv(csv_file, index=False, encoding="utf-8")
    
    print(f"Dados salvos em {csv_file}")
else:
    print("Nenhuma tabela encontrada no PDF.")

arquivo_zip = "Teste_RYAN_LANZILOTI.zip"

with zipfile.ZipFile(arquivo_zip, "w") as zipf:
    zipf.write(csv_file, os.path.basename(csv_file)) 
    os.remove(csv_file) 
 
