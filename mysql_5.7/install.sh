echo "开始执行构建Mysql 5.7 数据库...."
if docker ps -a | grep mysql_57_port_3306 ; then
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