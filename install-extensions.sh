#!/bin/bash

FILE="$(dirname "$0")/extensions-enabled.txt"

echo "🧩 Instalando extensiones de GNOME..."

while read -r uuid; do
    echo "🔍 Buscando e instalando: $uuid"
    gnome-extensions install --force "$uuid" 2>/dev/null || {
        echo "⚠️ No se pudo instalar $uuid automáticamente. Instálala manualmente desde https://extensions.gnome.org"
    }
done < "$FILE"
