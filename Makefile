IMAGE_NAME=circle-ci-api
PORT_TO_EXPOSE=3000

build_docker_image:
	docker build . -t $(IMAGE_NAME)

run_container:
	docker run -d -p 127.0.0.1:$(PORT_TO_EXPOSE):$(PORT_TO_EXPOSE)/tcp $(IMAGE_NAME)