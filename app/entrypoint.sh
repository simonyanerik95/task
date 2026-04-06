#!/usr/bin/env bash
set -euo pipefail

echo "Starting App Container..."
echo "Running initialization script..."
echo "Application started"
exec python /app/app.py