FROM python:3.8

WORKDIR /app

COPY . .

RUN python3 -m pip install -r requirements.txt

WORKDIR /app/core

CMD ["python3", "manage.py", "runserver", "0:8000"]

EXPOSE 8000

# docker run -tid -e PASSWORD=${PASSWORD} -p 8000:8000 study-koozzi