#!/bin/bash
# Оновлення списку пакетів
sudo apt update

# Встановлення Nginx
sudo apt install -y nginx

# Запуск служби Nginx
sudo systemctl start nginx

# Налаштування автозапуску Nginx
sudo systemctl enable nginx

# Додатково: створення індексної сторінки
echo "Welcome to $(hostname)!" | sudo tee /var/www/html/index.html
