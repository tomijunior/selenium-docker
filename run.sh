#!/bin/bash

IMAGE="selenium-docker"

if [ -z "$1" ]; then
	read -p "Task (build|up|down) : " TASK
else
	TASK=$1
fi


function build() {		
	read -p "Version : " VER

	echo "Build docker image with version \"${VER}\""
	docker build --no-cache -t ${IMAGE}:${VER} -f src/Dockerfile src \
	&& echo "Build docker image \"${IMAGE}\":\"${VER}\" success."
}

function up() {
	docker compose -p selenium -f ./compose/docker-compose.yml up -d
}

function down() {
	docker compose -p selenium -f ./compose/docker-compose.yml down
}

case $TASK in
build)
	build
	;;
up)
	up
	;;
down)
	down
	;;
*)
	echo "Invalid environment! Valid options: test, build, push"
	;;
esac
