PROD_HOST=dorf

install : make.sh
	./make.sh install

server : make.sh
	./make.sh server

deploy: make.sh
	./make.sh deploy $(PROD_HOST)
