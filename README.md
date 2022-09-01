# flask-api
flask-api test


## 安装环境
镜像环境：`docker pull wonderfulv1/flask:1.0.0`  
可能安装报错信息： flask 和Werkzeug 版本的对应关系
```bash
pip3 install flask==2.1.3  
pip3 install Werkzeug==2.1.2  
```

## 运行
```bash
cd flask-api-tutorial-master
flask run
#注意在容器里面运行，想映射到外部主机端口是，最好是指定--host 0.0.0.0 
#调试时可以设定 --debugger
flask run --host 0.0.0.0 --port 5000 --debugger
```
