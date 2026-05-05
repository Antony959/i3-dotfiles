#!/bin/bash

# Mata polybar existente silenciosamente
killall polybar 2>/dev/null

# Aguarda um pouco
sleep 0.5

# Inicia polybar
polybar example &

echo "Polybar reiniciado"
