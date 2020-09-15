# SonarQube  & Sonar Scanner on Docker Compose

## Why to use it?
- Catch bugs to prevent undefined behaviors
- Find security vulnerabilities
- Make sure your codebase is clean and maintainable
- It's Open Source

## Requirements
- Docker
- Docker Compose
- Make

## Usage
**On Linux you may need to set this**:

```sh
sudo sysctl -w vm.max_map_count=262144
```
0. Copy these files to your project root

1. Build SonarQube
```sh
build-sq
```

2. Run SonarQube
```sh
run-sq
```

3. Access http://localhost:9000/ and login with default credentials:
```sh
login: admin
password: admin
```

4. Create and setup a project at the graphic interface.

5. Fill up the project information at `docker-compose.yml` environment variables

```yml
    environment:
      - SONAR_HOST_URL=http://sonarqube:9000
      - SONAR_PROJECT_KEY=your_password
      - SONAR_PROJECT_NAME=your_project_name
      - SONAR_PROJECT_VERSION=0.1
      - SONAR_PROJECT_SOURCE=/usr/src/
      - SONAR_PROJECT_BASE_DIR=/usr/src/
      - SONAR_SCM_PROVIDER=git
      - SONAR_PROJECT_LANGUAGE=py
      - SONAR_SOURCE_ENCODING=UTF-8
```

6. Build Sonar Scanner
```sh
build-sq
```

7. Run Sonar Scanner
```sh
run-sq
```

8. Check the results at http://localhost:9000/