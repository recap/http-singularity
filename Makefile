#.PHONY: build

FILE=http-server_amd64.simg
PORT=8090

build:
ifeq ("$(wildcard $(FILE))","")
	sudo singularity build $(FILE) Singularity
endif

clean: 
	rm -rf $(FILE)

run-server: build
	singularity run $(FILE) python -m SimpleHTTPServer $(PORT)
