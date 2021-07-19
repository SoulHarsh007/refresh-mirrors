#!/usr/bin/env sh

echo "Ranking RebornOS Mirrors..."
echo ""
pkexec /usr/bin/rate-mirrors --concurrency=16 --per-mirror-timeout=3000 --allow-root --save=/etc/pacman.d/reborn-mirrorlist rebornos
echo ""
echo ""

echo "Ranking ArchLinux Mirrors..."
echo ""
pkexec /usr/bin/rate-mirrors --protocol=https --allow-root --save=/etc/pacman.d/mirrorlist arch
echo ""
echo ""
