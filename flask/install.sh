echo "-------> 开始尝试构建Flask Docker 镜像 "

# 如果原服务存在的话，则停止并清除原服务
if docker-compose ps | grep flask_python_app ; then
    echo "Docker容器中存在该服务，即将停止并删除此服务...."
    docker-compose stop
    echo "y" | docker-compose rm
fi

# 重新构建Docker镜像
docker-compose build
# 部署项目
docker-compose up -d
if [ $? -eq 0 ]; then 
    echo "-------------> 项目构建完成"
    #  你可以使用curl 访问http://localhost:8888 或者使用浏览器访问该URL
    # 如果你的curl命令不存在，你也可以使用下面的安装命令安装curl
    # ubunut： sudo apt-get install curl
    # centos: sudo yum install curl
    # mac : brew install curl

fi    