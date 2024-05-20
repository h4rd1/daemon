#!/bin/bash

# Переменные для настроек GlusterFS
GLUSTER_VOLUME="имя_твоего_глустер_вольюма"
GLUSTER_SERVER="адрес_твоего_глустер_сервера"

# Путь для точки монтирования
MOUNT_POINT="/путь/к/точке/монтирования"

# Создаем точку монтирования, если она не существует
mkdir -p $MOUNT_POINT

# Монтируем GlusterFS
mount -t glusterfs $GLUSTER_SERVER:/$GLUSTER_VOLUME $MOUNT_POINT
