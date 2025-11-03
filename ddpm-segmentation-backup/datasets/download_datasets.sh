#!/bin/bash
curl -L -o datasets.tar.gz https://storage.yandexcloud.net/yandex-research/ddpm-segmentation/datasets.tar.gz
mkdir -p datasets
tar -xzf datasets.tar.gz -C datasets/
rm datasets.tar.gz
