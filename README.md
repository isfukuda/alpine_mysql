# alpine-mysql
A docker image base on apline with mysql

## build image (docker)
```
docker build -t alpine_mysql:latest .
```
## build image (docker-compose)
- in this case, use .env
```
docker-compose build
```

## Usage (docker)
```
docker run -it --name mysql -p 3306:3306 -v $(pwd):/app \
-e MYSQL_DATABASE=admin -e MYSQL_USER=<USER> \
-e MYSQL_PASSWORD=<USER PASS> -e MYSQL_ROOT_PASSWORD=<ROOT PASS> alpine_mysql
```

## Usage (docker-compose)
```
docker-compose up -d
```
## Attention
- set no password for 'root' with localhost connections;
- set password for 'root' with non-localhost connections (default is <check script>);
- create a new database (default is 'TestDB');
