#!/bin/bash

# Получаем текущую раскладку через hyprctl devices
CURRENT=$(hyprctl devices | grep -A 10 "at-translated-set-2-keyboard" | grep "active keymap" | awk '{print $3}' | tr -d '()')

# Если текущая раскладка ua (Ukrainian), переключаем на us
if [ "$CURRENT" == "Ukrainian" ]; then
    hyprctl switchxkblayout at-translated-set-2-keyboard 0
else
    # Чередуем между us (0) и ru (1)
    LAST=$(cat /tmp/last_layout 2>/dev/null || echo "0")
    if [ "$LAST" == "0" ]; then
        hyprctl switchxkblayout at-translated-set-2-keyboard 1
        echo "1" > /tmp/last_layout
    else
        hyprctl switchxkblayout at-translated-set-2-keyboard 0
        echo "0" > /tmp/last_layout
    fi
fi
