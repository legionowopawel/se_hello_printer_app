# Simple Flask App

Aplikacja Dydaktyczna wyświetlająca imię i wiadomość w różnych formatach dla zajęć xxx
o Continuous Integration, Continuous Delivery i Continuous Deployment.

- W projekcie wykorzystamy virtual environment, dla utworzenia hermetycznego środowisko dla aplikacji:

  ```
  # tworzymy hermetyczne środowisko dla bibliotek aplikacji
  wszystkie np. biblioteki będą zainstalowane w tym srodowisku a nie w calym Linuxie:
  $ python3 -m venv .venv

  # aktywowanie hermetycznego środowiska
  $ source .venv/bin/activate
  #alternatywą jest wpisanie:
  make deps
  $ pip install -r requirements.txt
  $ pip install -r test_requirements.txt

  # zobacz
  $ pip list
  ```

  Sprawdź: [tutorial venv](https://docs.python.org/3/tutorial/venv.html) oraz [biblioteki flask](http://flask.pocoo.org).

- Uruchamianie applikacji:

  ```
  # jako zwykły program
  $ python main.py

  # albo:
  $ PYTHONPATH=. FLASK_APP=hello_world flask run
  ```

- Uruchamianie testów (see: http://doc.pytest.org/en/latest/capture.html):

  ```
  $ PYTHONPATH=. py.test
  $ PYTHONPATH=. py.test --verbose -s
  ```

- Kontynuując pracę z projektem, aktywowanie hermetycznego środowiska dla aplikacji py:

  ```
  # deaktywacja
  $ deactivate
  ```
asdfasdfgit
  ```
  ...

  # aktywacja
  $ source .venv/bin/activate
  ```

- Integracja z TravisCI:

  ```
  # miejsce na twoje notatki
  ```

# Pomocnicze

## Ubuntu

- Instalacja dockera: [dockerce howto](https://docs.docker.com/install/linux/docker-ce/ubuntu/)

## Centos

- Instalacja docker-a:

  ```
  $ yum remove docker \
        docker-common \
        container-selinux \
        docker-selinux \
        docker-engine

  $ yum install -y yum-utils

  $ yum-config-manager \
      --add-repo \
      https://download.docker.com/linux/centos/docker-ce.repo

  $ yum makecache fast
  $ yum install -y docker-ce
  $ systemctl start docker

  - usunięcie pliku: NAZWA_DOCKER_IMAGE
  $ docker images
  $ docker rmi
  ```
na https://app.statuscake.com/
ustawiłem informację o wysyłanie alertu.


 wygenerowany w Trwavis Markdown powoduje że po naciśnięciu poniższego linku przejdziesz do Travis i zrobisz test
[![Build Status](https://travis-ci.com/legionowopawel/se_hello_printer_app.svg?branch=master)](https://travis-ci.com/legionowopawel/se_hello_printer_app)



https://app.statuscake.com/button/index.php?Track=TRACK_ID&Days=1&Design=1


1. Wejdź na strone Status Cake w "Uptime Monitering"
2. skopiuj url i niech to bedzie LINK1 

Wstawić końcówkę z tego swojego url https://app.statuscake.com/UptimeStatus.php?tid=6003170
tj. 6003170
zamiast TRACK_ID  do linku 
https://app.statuscake.com/button/index.php?Track=6003170&Days=1&Design=1
Utworzyłeś w ten sposób LINK2

powyższe utworzeone linki podstaw do wzoru:

<!--
# [![Build Status](LINK1](LINK2)"
-->
[![Build Status](https://app.statuscake.com/button/index.php?Track=6003170&Days=1&Design=1)](https://app.statuscake.com/UptimeStatus.php?tid=6003170)

