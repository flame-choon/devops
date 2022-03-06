# INFO : https://docs.docker.com/compose/cli-command/

set -euf -o pipefail

# 최신 버전 참조하여 버전 기입
# (최신 버전은 상단에 명시 된 Info의 웹페이지 참조)
DOCKER_COMPOSE_VERSION=v2.2.3

# Download and install
DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker}
mkdir -p $DOCKER_CONFIG/cli-plugins
curl -SL https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-linux-x86_64 -o $DOCKER_CONFIG/cli-plugins/docker-compose

chmod +x $DOCKER_CONFIG/cli-plugins/docker-compose