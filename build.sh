set -ex
#set registry
USERNAME=204065533127.dkr.ecr.ap-northeast-1.amazonaws.com
# image name
IMAGE=cc102_ecr_test
docker build -t $USERNAME/$IMAGE:mysql -f Chatbot_Dev/dockerfile-mysql Chatbot_Dev/
docker build -t $USERNAME/$IMAGE:api -f Chatbot_Dev/dockerfile-api Chatbot_Dev/
docker build -t $USERNAME/$IMAGE:redis -f Chatbot_Line/dockerfile-redis Chatbot_Line/
docker build -t $USERNAME/$IMAGE:jupyter -f Chatbot_Line/dockerfile-jupyter Chatbot_Line/
docker build -t $USERNAME/$IMAGE:ngrok -f Chatbot_Line/dockerfile-ngrok Chatbot_Line/


#docker-compse up -d
#docker tag iii $USERNAME/$IMAGE:iii
#docker build -t $USERNAME/$IMAGE:latest .
#version=`cat VERSION`
#echo "version: $version"
#docker tag $USERNAME/$IMAGE:latest $USERNAME/$IMAGE:$version


