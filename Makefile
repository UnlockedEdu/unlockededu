build:
	docker build -t webpage-frontend .

run:
	docker run --rm -it -v `pwd`:/data -p 8000:8000 python:latest python3 -m http.server --directory /data/webpage

