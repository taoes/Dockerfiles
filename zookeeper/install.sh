echo "开始执行构建 Zookeeper 集群 ...."
if docker ps -a | grep zookeeper_zoo ; then
    echo "发现原始容器，即将停止并删除....."
    docker-compose stop
    echo "y" | docker-compose rm
fi     

docker-compose up -d

if [ $? -eq 0 ]; then
    echo "部署完成....."
else
    echo "部署失败,请查看 /tmp/docker-compose-mysql.log 文件查看具体内容"
fi