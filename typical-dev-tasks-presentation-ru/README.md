typical-dev-tasks-presentation-ru
=================================

Presentation about typical programmers tasks for students (RU)

1. Конфигурирование. Журналирование, Профилирование.

2. Протоколы интеграции и маршалинг.

3. Хранилища данных (реляционные и иные).

4. Технологии параллелизма. Масштабирование ПО.

5. Сложность алгоритмов, Оптимизация.

6. Установка ПО. Локализация и интернационализация (технологии и подходы).

For complile to PDF you need (on Debian/Ubuntu)
- install texlive-full from repository:
sudo aptitude install texlive-full

- install beamerthemeumbc.deb from this repository
sudo dpkg -i beamerthemeumbc.deb

or manually install Beamer theme UMBC 3
http://www.math.umbc.edu/~rouben/beamer/quickstart-Z-H-8.html
http://code.google.com/p/latexslides/source/browse/trunk/styles/math.umbc.edu-beamer/?r=26

- run:
sudo texhash

-run:
pdflatex typical-dev-tasks.tex

may be two times
