#!/bin/bash
. ./setenv.sh
export JAR_FILE_NAME=${PROJECT_ARTIFICAT_ID}-0.0.1-SNAPSHOT.jar
mkdir -p ${PROJECT_ROOT}/target/docker
echo "Copying docker file"
cp ../Dockerfile ${PROJECT_ROOT}/target/docker
echo "Copying Jar file"
ls -ltr ${PROJECT_ROOT}/target/${JAR_FILE_NAME}
cp ${PROJECT_ROOT}/target/${JAR_FILE_NAME} ${PROJECT_ROOT}/target/docker/app.jar
cd ${PROJECT_ROOT}/target/docker
pwd
ls 
echo "Image name is ${ECR_IMAGE_NAME}"
docker image build -t ${IMAGE_NAME} .



