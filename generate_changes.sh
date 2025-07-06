#!/bin/bash

cd ~/auto_kingvu || exit

# Обновляем heartbeat
echo "Heartbeat: $(date '+%Y-%m-%d %H:%M:%S')" > heartbeat.txt

# Сохраняем системный статус
echo "Uptime: $(uptime -p)" > status.log

# Можно добавлять другие полезные данные:
# df -h > disk_usage.log
# top -b -n 1 | head -20 > top.log

# Запускаем авто-коммит
./auto_commit.sh
