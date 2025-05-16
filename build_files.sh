#!/usr/bin/env bash
chmod +x build_files.sh

# build_files.sh
set -e

echo "🔄 Instalando dependencias..."
pip install -r requirements.txt

echo "🗄️  Aplicando migraciones en modo no-interactivo..."
python manage.py migrate --noinput

echo "📂 Recolectando archivos estáticos en /staticfiles..."
python manage.py collectstatic --noinput

echo "✅ Build completado."
