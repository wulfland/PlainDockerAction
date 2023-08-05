# Container image that runs your code
FROM node:10

LABEL "com.github.actions.name"="Plain Docker Action"
LABEL "com.github.actions.description"="A hello-world action without a actionyml file that uses docker labels."
LABEL "com.github.actions.icon"="git-commit"
LABEL "com.github.actions.color"="orange"

LABEL "repository"="https://github.com/wulfland/PlainDockerAction"
LABEL "homepage"="https://github.com/wulfland/PlainDockerAction"
LABEL "maintainer"="wulfland"

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
