all: build push
build:
	docker build -t alexellis/oidc-plugin-dist:0.1.0 .
push:
	docker push alexellis/oidc-plugin-dist:0.1.0

