#!/bin/bash

cd ~/auto_kingvu || exit

# Добавляем все изменения
git add .

# Проверяем, есть ли изменения
if ! git diff-index --quiet HEAD; then
    commit_message="Auto commit from kingvua $(date '+%Y-%m-%d %H:%M:%S')"
    git commit -m "$commit_message"
    git push origin main
else
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] No changes to commit."
fi
