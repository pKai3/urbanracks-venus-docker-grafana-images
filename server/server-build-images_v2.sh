TAG=$1
if [ "$TAG" == "" ]; then
  echo "specify tag"
  exit 1
fi

REPO=pkai3
TARGET=venus-docker-server
BUILD_OPTS=--no-cache
TAG_LATEST=0

docker build ${BUILD_OPTS} $PLATFORM -t $REPO/$TARGET:${TAG} .
docker push $REPO/$TARGET:${TAG}
