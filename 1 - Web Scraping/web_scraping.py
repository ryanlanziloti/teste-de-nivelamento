import requests
import zipfile
import os

pdfs = {
    "anexo_1.pdf": "https://www.gov.br/ans/pt-br/acesso-a-informacao/participacao-da-sociedade/atualizacao-do-rol-de-procedimentos/Anexo_I_Rol_2021RN_465.2021_RN627L.2024.pdf",
    "anexo_2.pdf": "https://www.gov.br/ans/pt-br/acesso-a-informacao/participacao-da-sociedade/atualizacao-do-rol-de-procedimentos/Anexo_II_DUT_2021_RN_465.2021_RN628.2025_RN629.2025.pdf"
}

for nome_arquivo, url in pdfs.items():
    response = requests.get(url, stream=True)
    if response.status_code == 200:
        with open(nome_arquivo, "wb") as file:
            for c in response.iter_content(1024):
                file.write(c)
        print(f"Download concluído: {nome_arquivo}")
    else:
        print(f"Erro ao baixar: {nome_arquivo}")


arquivo_zip = "anexos.zip"

with zipfile.ZipFile(arquivo_zip, "w") as zipf:
    for nome_arquivo in pdfs.keys():
        zipf.write(nome_arquivo)
        os.remove(nome_arquivo)  

