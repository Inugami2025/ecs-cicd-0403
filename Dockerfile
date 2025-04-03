#dockerfile 是为了创建镜像

#从官方下载镜像
FROM docker.io/library/nginx
#因为已经下载了nginx文件进行修改 所以路径选择本地的nginx文件
COPY ./default.conf /etc/nginx/
#删除旧文件 复制编译后的新文件
RUN rm -rf /usr/share/nginx/html/*
COPY ./dist/shop /usr/share/nginx/html/