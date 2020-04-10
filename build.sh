#!/bin/sh
tag=`date  "+%y%m%d_%H%M%S"`
repoUrl="docker.tourscool.cn/library/promtheus"

# docker build
docker build  \
-t  ${repoUrl}:${tag} \
 ./

#push image
docker tag   ${repoUrl}:${tag} ${repoUrl}:latest
docker push  ${repoUrl}:${tag}
docker push  ${repoUrl}:latest
