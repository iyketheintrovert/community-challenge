FROM python:3.8-alpine

WORKDIR /app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV FLASK_APP=main.py

ENV FLASK_DEBUG=1

EXPOSE 5000

CMD ["flask", "run", "--host", "0.0.0.0"]