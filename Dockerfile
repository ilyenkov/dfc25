FROM odsai/df25-baseline  # Например: python:3.9-slim

# Обновление библиотек и установка пакетов
RUN apt update && apt upgrade -y \
    && pip install --no-cache-dir --upgrade sentence_transformers==3.4.1 polars==1.0.0

COPY preload_model.py .
RUN python preload_model.py

# Основная рабочая директория
WORKDIR /app
COPY . .

CMD ["python" "-u" "model.py"]
