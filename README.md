# dockerLearn

###### Docker

* docker images
* docker run image名稱:tag版本
* docker build -t hub帳號/image名稱:tag --build-arg myName=“xxx” . 

    ( tag 沒設就會是latest ) 

    build-arg 丟參數進去
* docker push hub帳號/image名稱
* docker rmi image名稱 

    刪除image (remove image) 要刪的 image 必須沒有被 container 使用中
* docker rm container編號
* Docker rmi -f image名稱
       不管這個 image 有沒有 container 在使用 強制刪除

###### Container
* docker container ls

    列出所有啟動的 container
* docker container ls -a

    列出所有有啟動沒啟動的container
* docker run --name c01 alpine 後面可以接任何該image可以使用的指令

    起一個 名叫 c01 的 container 給 alpine image 
* docker run -it /bin/sh

    container只要沒有程序跑就會自己消滅 用 -it 讓他一直跑 就可以一直操作指令下去
* docker run -d

    讓container在背景跑
* docker run tail -f /dev/null
    container 執行時寫log
* docker exec -it container ID /bin/sh

    進到container裡面執行指令 在該container裡面起一個 /bin/sh
* docker run -p 8080:80

    給container開port 外面：裡面contagion
* docker container stop container ID

    停掉container 
* docker container rm containerID

    停掉container container還在 rm 才會整個刪除
    

Docker-file
* FROM image名稱

    拉image
* ENTRYPOINT [“ ”, ” “, “ “]

    在container裡第一個會執行的指令
* RUN echo “…”

    寫任何image裡可用的指令執行
    
    每行run都是啟一個臨時的container所以不同行會分開在不同container執行
    
    如果要在同一個執行 RUN 指令一&&指令二 如果要多個指令斷行寫
    
    RUN 指令一 \
            
    指令二
* ENV dir /etc/host

    建立環境變數 使用則 ${dir}
* WORKDIR 路徑

    進到container自動cd到設定的路徑
* ARG 

    可讓 docker build 的時候傳參數進去
* COPY ./content.txt ./

    把當前的content.txt 複製到container裡當前的資料夾
    
    如果有設 WORKDIR 就是複製到設定的路徑下
    
