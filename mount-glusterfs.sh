#!/bin/bash

# Путь к точке монтирования
MOUNT_POINT="/var/lib/docker/volumes"
# Адрес сервера GlusterFS и путь к тому
GLUSTER_SERVER="localhost"
VOLUME_NAME="swarm-vols"

# Создаем точку монтирования, если она не существует
if [ ! -d "$MOUNT_POINT" ]; then
    mkdir -p $MOUNT_POINT
fi

# Монтируем GlusterFS
mount -t glusterfs $GLUSTER_SERVER:/$VOLUME_NAME $MOUNT_POINT

# Проверяем, успешно ли произошло монтирование
if [ $? -eq 0 ]; then
    echo "GlusterFS успешно смонтирован в $MOUNT_POINT"
else
    echo "Ошибка при монтировании GlusterFS"
fi
~                                    
