# Image name on Dockerhub: anas1243/simple-webapp-flask

# docker run -d -p 80:8080 --name flask-webapp anas1243/simple-webapp-flask
FROM ubuntu
RUN apt update && apt install -y python3 python3-pip
RUN pip3 install flask
COPY app.py /opt/app.py
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
