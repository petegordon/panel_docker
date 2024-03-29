FROM python:3.10

COPY ./requirements.txt /app/requirements.txt

COPY ./app /app
WORKDIR /app
RUN set -ex && pip install -r requirements.txt
EXPOSE 8080

CMD python -m panel serve app.py --admin --address 0.0.0.0 --port 8080 --prefix=/holoviz/ --num-procs 0 --num-threads 0 --allow-websocket-origin="*" --disable-index-redirect --use-xheaders