import os
import sys
import shutil
from pathlib import Path
import typing as t
from tqdm import tqdm

# --- Configuração do Diretório Raiz e Imports ---
try: ROOT_DIR = Path(__file__).resolve().parent
except NameError: ROOT_DIR = Path.cwd()
if str(ROOT_DIR) not in sys.path:
    sys.path.insert(0, str(ROOT_DIR))

from src.config import config