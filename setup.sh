#!/bin/bash

# Переменные
REPO_URL="https://github.com/gdmitriyv/shvirtd-example-python.git"
TARGET_DIR="/opt/shvirtd-example-python"

# Переходим в каталог /opt
cd /opt

# Скачиваем форк репозитория
if [ ! -d "shvirtd-example-python" ]; then
    git clone $REPO_URL
else
    echo "Репозиторий уже существует, программа не будет заново скачиваться."
fi

# Переход в каталог репозитория
cd $TARGET_DIR

# Запускаем проект в Docker Compose
docker compose up -d
