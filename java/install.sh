echo "Start exec docker-compose command...."

# 如果原服务存在的话，则停止并清除原服务
if docker-compose ps | grep java_spring_app ; then
    echo "exist old service ,and will be stop it ...."
    docker-compose stop
    echo "y" | docker-compose rm
fi

# 重新构建Docker镜像
docker-compose build
# 部署项目
docker-compose up -d
echo "command execute complete,please visit http://localhost:8888"