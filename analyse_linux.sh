#!/bin/bash

echo "===== ANALYSE DES LOGS LINUX ====="
echo "Date : $(date)"

echo -e "\n1. Erreurs critiques (journalctl -p 3 -xb)"
journalctl -p 3 -xb | head -n 30

echo -e "\n2. Dernières erreurs dans /var/log/syslog"
grep -i "error" /var/log/syslog | tail -n 5

echo -e "\n3. Logs du service SSH (journalctl -u ssh.service)"
journalctl -u ssh.service | grep -i error | tail -n 3
