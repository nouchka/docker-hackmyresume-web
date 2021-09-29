DOCKER_IMAGE=hackmyresume-web

include Makefile.docker

.PHONY: check-version
check-version:
	docker run --rm $(DOCKER_NAMESPACE)/$(DOCKER_IMAGE):$(VERSION) dpkg-query --showformat='$${Version} ' --show nginx
	docker run --rm --entrypoint npm $(DOCKER_NAMESPACE)/$(DOCKER_IMAGE):$(VERSION) list -g --depth=0| grep hackmyresume| awk -F '@' '{print $$2}'
