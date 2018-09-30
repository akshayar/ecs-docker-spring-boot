!/bin/bash
. ./setenv.sh
export project.version=0.0.1-SNAPSHOT
export JAR_FILE_NAME=${project.artifactId}-0.0.1-SNAPSHOT.jar
mkdir -p ${PROJECT_ROOT}/target/docker
cp ../Dockerfile ${PROJECT_ROOT}/target/docker
cp ${PROJECT_ROOT}/target/${JAR_FILE_NAME} ${PROJECT_ROOT}/target/docker/${JAR_FILE_NAME}
cd ${PROJECT_ROOT}/target/docker
pwd
ls 
echo "Image name is ${ECR_IMAGE_NAME}"
docker image build -t ${IMAGE_NAME} .
docker image ls



