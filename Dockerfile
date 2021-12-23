 # 建立 python3.7 环境
 FROM python:3.7
 
 # 设置 python 环境变量
 ENV PYTHONUNBUFFERED 1
 
 # 在容器内/var/www/html/下创建 mysite1文件夹
 RUN mkdir -p ./dockertest
 
 # 设置容器内工作目录
 WORKDIR ./dockertest
 
 # 将当前目录文件加入到容器工作目录中（. 表示当前宿主机目录）
 ADD . /dockertest
 
 # 利用 pip 安装依赖
 RUN pip install -r requirements.txt