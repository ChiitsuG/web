FROM python:3.10-slim-buster

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt

COPY . /app

EXPOSE 8000

ENTRYPOINT ["python"]
CMD ["manage.py","runserver","0.0.0.0:8000"]