#!/bin/bash

# Запуск в сборке Jenkens
# Получение пути к директории Jenkins home
JENKINS_HOME="$JENKINS_HOME"
#-------------------------------------------------------
# Создание виртуального окружения
python3 -m venv "$JENKINS_HOME/venv" || { echo "Error creating virtual environment."; exit 1; }
# Активация виртуального окружения
source "$JENKINS_HOME/venv/bin/activate" || { echo "Error activating virtual environment."; exit 1; }
# Установка зависимостей
pip install -r "$JENKINS_HOME/workspace/bash_1/requirements.txt" || { echo "Error installing dependencies."; exit 1; }
# Переход в каталог
cd "$JENKINS_HOME/workspace/bash_1" || { echo "Error changing to directory."; exit 1; }
# Запуск создания данных
python data_creation.py || { echo "Error running data_creation.py."; exit 1; }
# Запуск предобработка данных
python model_preprocessing.py || { echo "Error running model_preprocessing.py."; exit 1; }
# Запуск предобработка данных
python model_preparation.py || { echo "Error running model_preparation.py."; exit 1; }