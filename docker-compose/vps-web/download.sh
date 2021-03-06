#! /bin/sh

# Docker images

docker pull adrien97nini/wt_soa:latest
docker pull adrien97nini/wt_db:latest
docker pull adrien97nini/wt_web:latest

# COMPOSE

curl -o docker-compose.yml https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/docker-compose/vps-web/docker-compose.yml;

# DNS
mkdir dns;
curl -o dns/named.conf https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/dns/SOA/config/named.conf;
curl -o dns/named.conf.default-zones https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/dns/SOA/config/named.conf.default-zones;
curl -o dns/named.conf.local https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/dns/SOA/config/named.conf.local;
curl -o dns/named.conf.options https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/dns/SOA/config/named.conf.options;
curl -o dns/db.internal.wt1.ephec-ti.be https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/dns/SOA/config/db.internal.wt1.ephec-ti.be;
curl -o dns/db.wt1.ephec-ti.be https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/dns/SOA/config/db.wt1.ephec-ti.be;

# DB
mkdir db;
curl -o db/mysqld.cnf https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/database/config/mysqld.cnf;
