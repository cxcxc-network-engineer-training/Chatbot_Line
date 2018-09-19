# Chatbot_Line
-------------------------
* 2018/9/4：
建置Mock server環境
修復Mock server無法新增的問題
建置Redis環境
建置Jupyter環境compose
整合成Docker-compose

* 2018/9/10:

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

* 2018/9/13

#dockerfile 

##dockerfile-jupyter
將jupyter的image改為docker file 
預設安裝flask0.12, requests, line-bot-sdk

##dockerfile-mockapi
因需用兩個dockerfile 因此將mockapi的dockerfile更名為dockerfile-mockapi

#docker-compose
更新項目:
新增ngork整合入docker-compose 
更改mockapi的port
更改jupyter映射資料夾
更改redis版本為4.0

#image
mockapi: dockerfile-mockapi
redis: redis:4.0
jupyter: dockerfile-jupyter
ngrok: wernight/ngrok

#ports:
mockapi:5005
redis:6379
jupyter:8888
	5000
ngrok:4040

#volumes:
mockapi: ./mockapi
redis: ./data
jupyter: ./code

* 2018/9/14

#針對code/app.ipynb進行修改
主要是寫有關follow event的接口

#寫一個code/menu.ipynb
主要是寫有關製作menu_id的部份
還有後續行為

#image/*
也放了一些圖檔給menu使用
要注意格式的部份

* 2018/09/15
將所有image更改為dockerfile形式
新增dockerfile 資料夾存放所有dockerfile
新增jupyter與mockapi、redis的相依性關係

* 2018/9/16

#針對code/app.ipynb進行修改
寫了message event跟postback event
主要是有關於考古題的出題

* 2018/9/17

#修改了code/menu_id,code.ipynb
#跟老師的架構有誤差進行修改
主要是quick reply的寫法，postback action 的data運用方式

* 2018/9/18

#由於上傳了新的資料庫出現了一個新的bug，postback action 的text裝不下太大量的回覆
主要是將原本裝在postback action的text用成postback event的方式回覆
又順便將一些重複的程式寫成函式呼叫的方式

* 2018/9/19
#對一些現有的功能進行優化，並合併開發分支
/code/code.ipynb
增加更多跟redis之間的交互關係，不使用亂數，改成客製化出題

/code/menu_id.ipynb
新增了一個程式碼是將需要的menu post 到API server
