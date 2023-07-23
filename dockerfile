# Установка образа Alpine Linux содержащего Python 3.10.11 из DockerHub
FROM python:3.10.11-alpine3.16

# Запускаем команду pip install для всех необходимых библиотек
RUN pip install --upgrade pip \
    && pip install python-dotenv \
    && pip install telebot \
    && pip install openai

# Создаем рабочую директорию с ботом внутри контейнера
WORKDIR /opt/ChatGPT