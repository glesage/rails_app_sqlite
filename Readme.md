## Rails App & MySql Dockerfile


This repository contains **Dockerfile** of [SQLite](http://www.sqlite.org/) for [Docker](https://www.docker.io/) published to the public [Docker Registry](https://index.docker.io/).


### Dependencies

* [glesage/nodejs-rails4](https://index.docker.io/u/glesage/nodejs-rails4)


### Installation

1. Install [Docker](https://www.docker.io/).

2. Download [build](https://index.docker.io/u/glesage/rails-app-sqlite/) from public [Docker Registry](https://index.docker.io/): `docker pull glesage/rails-app-sqlite`


### Usage

    docker run -i -t -p 80:80 -v /home/me/myapp:/webapp glesage/rails-app-sqlite


### Stack

- Ruby 2.1.1
- NodeJS
- Rails 4
- MySql