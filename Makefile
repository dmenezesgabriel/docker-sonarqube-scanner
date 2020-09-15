build-sq:
	docker-compose -f docker-compose.sonarqube.yml build --no-cache sonarqube

run-ss:
	docker-compose -f docker-compose.sonarqube.yml up sonarqube

build-ss:
	docker-compose -f docker-compose.sonarqube.yml build --no-cache sonar-scanner

run-ss:
	docker-compose -f docker-compose.sonarqube.yml up sonar-scanner