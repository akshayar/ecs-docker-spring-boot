#!/bin/bash
. ./setenv.sh
aws ecr describe-repositories --repository-names ${IMAGE_NAME}
if [ $? -ne 0 ]
then
 aws ecr create-repository --repository-name ${IMAGE_NAME}
fi
docker tag ${IMAGE_NAME} ${ECR_IMAGE_NAME}
docker push ${ECR_IMAGE_NAME}



