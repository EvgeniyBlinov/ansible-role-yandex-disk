#!/bin/bash

echo "deb http://repo.yandex.ru/yandex-disk/deb/ stable main" |
    tee -a /etc/apt/sources.list.d/yandex.list > /dev/null &&
    wget http://repo.yandex.ru/yandex-disk/YANDEX-DISK-KEY.GPG -O- |
    apt-key add - &&
    apt-get update
