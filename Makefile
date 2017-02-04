VERSION=0.12.4-2

build:
	docker build -t quasselcore .

run-it:
	docker run --rm --name quasselcore -it --entrypoint bash quasselcore

run:
	docker run --rm --name quasselcore -p 4242:4242 quasselcore

push:
	docker tag quasselcore titilambert/quasselcore:latest
	docker tag quasselcore titilambert/quasselcore:$(VERSION)
	docker push titilambert/quasselcore:latest
	docker push titilambert/quasselcore:$(VERSION)
