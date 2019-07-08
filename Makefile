IMAGES=$(shell ls -d */ | cut -f1 -d'/')
GOVERSION=1.12

$(IMAGES): %:
	$(eval IMAGE=$*)
	@:

build:
	@test -z "$(IMAGE)" && echo "Usage: make [$(IMAGES)] build" || docker build --build-arg GOVERSION=$(GOVERSION) -t lab259/$(IMAGE):$(GOVERSION) ./$(IMAGE)

push: build
	@test -z "$(IMAGE)" && echo "Usage: make [$(IMAGES)] push" || docker push lab259/$(IMAGE):$(GOVERSION)

.PHONY: $(IMAGES) build