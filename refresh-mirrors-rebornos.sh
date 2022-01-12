#!/usr/bin/env sh

wait_and_exit() {
    WAIT_TIME="$1"
    EXIT_CODE="$2"    

    read -n 1 -s -r -t "$WAIT_TIME" -p "Press any key to exit..."
    exit "$EXIT_CODE"
}

exit_if_needed() {
    EXIT_CODE="$1"

    if [ "$EXIT_CODE" -ne 0 ]; then
        wait_and_exit 20 "$EXIT_CODE"
    fi
}

echo "Ranking RebornOS Mirrors..."
echo ""
pkexec /usr/bin/rate-mirrors --concurrency=16 --per-mirror-timeout=3000 --allow-root --save=/etc/pacman.d/reborn-mirrorlist rebornos
exit_if_needed "$?"
echo ""
echo ""

echo "Ranking ArchLinux Mirrors..."
echo ""
pkexec /usr/bin/rate-mirrors --protocol=https --allow-root --save=/etc/pacman.d/mirrorlist arch
exit_if_needed "$?"
echo ""
echo ""

wait_and_exit 10 0
