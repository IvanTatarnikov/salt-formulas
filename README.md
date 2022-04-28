# Задание
Используя SaltStack, создать "формулы" (это скрипты в терминологии этого инструмента) развертывания http-странички с Hello-world на сервере nginx по 80 порту.

# Решение
1. Развернуть серверный Linux на виртуальной машине 
2. Установить Salt: master и minion 

`sudo add-apt-repository ppa:saltstack/salt`

`sudo apt-get update`

`sudo apt-get install salt-master salt-minion`

3. Запустить Salt

`sudo service salt-master start`

4. Настроить Salt

`sudo vim /etc/salt/minion - master: 127.0.0.1`

`sudo salt-minion -d`

`sudo salt-key -L`

`sudo salt-key -A`

5. Выполнить тестовые команды

`sudo salt '*' test.version`

`sudo salt '*' test.ping`

6. Установить Git на master

`sudo apt-get install git`

7. Выкачать репозиторий с формулами

`git clone https://github.com/IvanTatarnikov/salt-formulas.git`

8. Скопировать формулы в `/srv/salt/`

9. Запустить формулы
    1. Загрузка сайта из Git (https://github.com/IvanTatarnikov/www-hello-world)
    
    `sudo salt ‘*’ state.apply site`
    
    2. Установка и конфигурирование nginx
    
    `sudo salt ‘*’ state.apply nginx`

10. Проверить работу сайта

`curl http://localhost`
