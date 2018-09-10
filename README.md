# Chatbot_Line
-------------------------
2018/9/4：
建置Mock server環境
修復Mock server無法新增的問題
建置Redis環境
建置Jupyter環境compose
整合成Docker-compose

2018/9/10:

#dockerfile
以dockerfile撰寫mockapi
image基底更改為ubuntu:latest
預先安裝python3、pip及flask
以python執行mockAPIserver.py



#docker-compose
將mockapi、redis、jupyter整合入docker-compose

#image
mockapi: dockerfile
redis: redis:5.0-rc4
jupyter: jupyter/base-notebook

#ports:
mockapi:5000
redis:6379
jupyter:8888

#volumes:
mockapi: ./mockapi
redis: ./data
jupyter: ./work

