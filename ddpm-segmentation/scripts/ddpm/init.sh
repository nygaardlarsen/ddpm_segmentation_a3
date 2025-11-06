#!/bin/bash
# init.sh - Installerer Python-pakker til jobbet med --user

# Opgrader pip først (valgfrit, men anbefales)
python -m pip install --upgrade pip --user

# Installer nødvendige pakker
python -m pip install --upgrade --user \
    torch==2.3.1 \
    torchvision==0.18.1 \
    torchaudio==2.3.1 \
    blobfile==2.1.1 \
    tqdm \
    opencv-python-headless==4.12.0.88 \
    timm \
    mpi4py

echo "✅ Python-pakker installeret med --user"
