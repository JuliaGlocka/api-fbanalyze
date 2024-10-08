FROM python:3.10-alpine
WORKDIR /code
ENV CHERRYPY_APP=app.py
ENV CHERRYPY_RUN_HOST=0.0.0.0
RUN apk add --no-cache gcc musl-dev linux-headers
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 5000
COPY . .
ENTRYPOINT ["python", "app.py"]
