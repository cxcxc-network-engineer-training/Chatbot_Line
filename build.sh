set -ex
#set registry
USERNAME=204065533127.dkr.ecr.ap-northeast-1.amazonaws.com
IAMGE1=redis
IAMGE2=jupyter
IAMGE3=ngrok

docker build -t $USERNAME/$IAMGE1:latest -f dockerfile/dockerfile-redis dockerfile/
docker build -t $USERNAME/$IAMGE2:latest -f dockerfile/dockerfile-jupyter dockerfile/
docker build -t $USERNAME/$IAMGE3:latest -f dockerfile/dockerfile-ngrok dockerfile/


redis_ver=`cat redis_ver`
echo "redis_ver: $redis_ver"
docker tag $USERNAME/$IAMGE1:latest $USERNAME/$IAMGE1:$redis_ver
jupyter_ver=`cat jupyter_ver`
echo "jupyter_ver: $jupyter_ver"
docker tag $USERNAME/$IAMGE2:latest $USERNAME/$IAMGE2:$jupyter_ver
ngrok_ver=`cat ngrok_ver`
echo "ngrok_ver: $ngrok_ver"
docker tag $USERNAME/$IAMGE3:latest $USERNAME/$IAMGE3:$ngrok_ver

docker push $USERNAME/$IAMGE1:$redis_ver
docker push $USERNAME/$IAMGE2:$jupyter_ver
docker push $USERNAME/$IAMGE3:$ngrok_ver
