此Dockerfile文件适用于构建基于Python + Flask的应用

+ 基于 Python 3.5 版本 构建

## 使用方式
1. 将你的代码文件拷贝到code目录下 入口重命名为app.py
2. 执行脚本 install.sh 看到Termial输入如下内容，表示Docker项目部署完成
3. 访问[本地5000端口](http://127.0.0.1:5000) 查看效果

```sh
-------> 开始尝试构建Flask Docker 镜像 
flask_python_app_1   python3 /app/app.py   Up      0.0.0.0:5000->5000/tcp
Docker容器中存在该服务，即将停止并删除此服务....
Going to remove flask_python_app_1
Are you sure? [yN] Step 1/6 : FROM python:3.5
 ---> 32184312b88b
Step 2/6 : MAINTAINER zhoutao825638@vip.qq.com
 ---> Using cache
 ---> 09b61cf5d25b
Step 3/6 : EXPOSE 5000
 ---> Using cache
 ---> 0615069aea85
Step 4/6 : RUN pip3 install flask
 ---> Using cache
 ---> 68a7f97770f0
Step 5/6 : COPY ./code /app/code
 ---> 7263f6781c87
Step 6/6 : CMD ["python3","/app/code/app.py"]
 ---> Running in 818823dd26a4
Removing intermediate container 818823dd26a4
 ---> abfa21caef32
Successfully built abfa21caef32
Successfully tagged flask_python_app:latest
-------------> 项目构建完成

```
