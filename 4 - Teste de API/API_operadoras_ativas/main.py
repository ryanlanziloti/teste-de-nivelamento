from fastapi import FastAPI, Query
import pandas as pd

app = FastAPI()
from fastapi.middleware.cors import CORSMiddleware

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],  # Defina domínios específicos se precisar
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)
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
