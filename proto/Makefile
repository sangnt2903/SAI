protoc:
	docker build -t protoc -f Dockerfile ./docker/.

gen:
ifdef service
	@docker run -it --rm \
	-e SERVICE=$(service) \
	-v ./:/defs \
	-v ./generated/:/generated \
	protoc:latest ./entrypoint.sh
endif