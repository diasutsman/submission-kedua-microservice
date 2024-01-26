#!/bin/bash

# Memulai proses build image dengan tag ghcr.io/diasutsman/karsajobs-ui:latest dari Dockerfile di direktori saat ini
docker build -t ghcr.io/diasutsman/karsajobs-ui:latest .

# Menggunakan variabel GITHUB_TOKEN yang diset di lingkungan untuk login ke GitHub Container Registry
# dengan username diasutsman dan password dari variabel stdin
echo $GITHUB_TOKEN | docker login ghcr.io --username diasutsman --password-stdin

# Mengunggah image ghcr.io/diasutsman/karsajobs-ui:latest ke GitHub Container Registry
docker push ghcr.io/diasutsman/karsajobs-ui:latest