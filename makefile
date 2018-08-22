DATE := $(shell date +%Y-%m-%d)
REGISTRY := docker.dragonfly.co.nz
IMAGE := docker.dragonfly.co.nz/prime-factors:2018-08-22
DCMD ?= docker run -it --rm --net=host --user=$$(id -u):$$(id -g) -e DCMD= -v$$(pwd)/:/work -w /work/ $(IMAGE)

all: primes_umap_1e6_16k_smaller_pts.png

primes_umap_1e6_16k_smaller_pts.png: plot.py umap.npz
	$(DCMD) bash -c "python3 plot.py"

umap.npz: factorize.py 
	$(DCMD) bash -c "python3 factorize.py"

docker:
	docker build -t $(REGISTRY)/prime-factors .
	docker tag $(REGISTRY)/prime-factors docker.dragonfly.co.nz/prime-factors:$(DATE)
	docker tag $(REGISTRY)/prime-factors docker.dragonfly.co.nz/prime-factors:latest
	docker push $(REGISTRY)/prime-factors:$(DATE)
	docker push $(REGISTRY)/prime-factors:latest
	
