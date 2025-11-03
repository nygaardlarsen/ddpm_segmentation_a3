#!/bin/bash
# =======================================
# UCloud init script for DDPM-segmentation
# Installerer PyTorch og nødvendige pakker
# =======================================

# Opdater pip og installer de ønskede versioner
pip install --upgrade pip

# Installer PyTorch + torchvision + torchaudio
pip install torch==2.3.1 torchvision==0.18.1 torchaudio==2.3.1

# Ekstra pakker til DDPM og databehandling
pip install blobfile==2.1.1 tqdm opencv-python timm mpi4py pillow numpy
