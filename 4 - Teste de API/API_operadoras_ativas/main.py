from fastapi import FastAPI, Query
import pandas as pd

app = FastAPI()

# Carregar o CSV, tratando valores vazios como strings
df = pd.read_csv("Relatorio_cadop.csv", sep=";", dtype=str).fillna("")

@app.get("/dados")
def get_dados():
    return df.to_dict(orient="records")

@app.get("/buscar")
def buscar_operadora(q: str = Query(..., description="Texto para buscar")):
    q = q.lower()  # Deixar a busca sem case-sensitive
    resultado = df[df.apply(lambda row: row.astype(str).str.contains(q, case=False, na=False).any(), axis=1)]
    
    return resultado.to_dict(orient="records")
# Rodar API: uvicorn main:app --reload
