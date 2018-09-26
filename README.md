# Chatbot_Line
-------------------------

code/  
>#製作menu_id的程式碼  
menu_id.ipynb   
#運行line bot server的程式碼  
app.ipynb  
#方便devops啟動轉成py  
app.py  
#裝一些要呼叫的重要變數  
secret_key  

/mockapi         #裝mockapi的程式碼  
>mockAPIserver.py    #運行mockAPI的程式碼  

/redis/data      #讓redis鏡像裝data的資料夾  
>...  

README.md        # 一個說明文字檔  

docker-compose.yml   #裝了所有的環境所需  

/dockerfile  
>#製作redis server要的image  
  dockerfile-redis  
  #製作ngrok server要的image  
  dockerfile-ngrok  
  #製作linebot server要的image  
  dockerfile-jupyter  
  #製作mockapi要的image  
  dockerfile-mockapi  
