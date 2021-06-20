.PHONY: test

deps:
	pip install -r requirements.txt; \
	pip install -r test_requirements.txt
lint:
	flake8 hello_world test
test:
	PYTHONPATH=. py.test --verbose -s

run:
	PYTHONPATH=. FLASK_APP=hello_world flask run

docker_build: lint
	docker build -t hello-world-printer .


docker_run: docker_build
	docker run \
		--name hello-world-printer-dev \
		-p 5000:5000 \
		-d hello-world-printer

#zebrałem komendy które się wpisuje do roota
test_tworzenia_dockera:
	docker stop hello-world-printer-dev
	docker rm hello-world-printer-dev
	make docker_run


USERNAME=legionowopawel
TAG=$(USERNAME)/hello-world-printer


docker_push: docker_build
	@docker login --username $(USERNAME) --password $${DOCKER_PASSWORD}; \
	docker tag hello-world-printer $(TAG); \
	docker push $(TAG); \
	docker logout;

	#zadanie 9
test_smoke:
	curl --fail 127.0.0.1:5000

test_smoke1:
	curl -s -o /dev/null -w "%{http_code}" --fail 127.0.0.1:5000

test_cov:
	PYTHONPATH=. py.test --verbose -s --cov=hello_world

test_xunit:
	PYTHONPATH=. py.test -s --cov=. --cov-report xml --junit-xml=test_results.xml

