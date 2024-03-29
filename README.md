Running without docker (http://localhost:9090/holoviz/admin):
python -m panel serve app.py --admin --address 0.0.0.0 --port 9090 --prefix=/holoviz/

Building Docker Image:
docker build -t panel-image .

Running DOcker COntainer from Image (http://localhost:8080/holoviz/admin)
docker run -it -p 8080:8080 --name panel-app panel-image