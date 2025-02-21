#!/bin/sh
# modifier avec votre token
registration_token= 
url= 

docker exec -it gitlab-runner1 \
  gitlab-runner register \
    --non-interactive \
    --registration-token ${registration_token} \
    --locked=false \
    --description docker-stable \
    --url ${url} \
    --executor docker \
    --docker-image docker:stable \
    --docker-volumes "/var/run/docker.sock:/var/run/docker.sock"
    
# executer le script pour inscrire le runner dans Gitlab