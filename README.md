# Ubuntu_docker
using docker build ubuntu work platform

### cpp_base

```shell
# build
docker build ./ -t feixiao/cpp_base

# Launch
docker-compose up -d

# docker容器运行必须有一个前台进程， 如果没有前台进程执行，容器认为空闲，就会自行退出
# 所以带 /bin/bash
docker run -dit feixiao/cpp_base /bin/bash
```

### cpp_build
```shell
# build
docker build ./ -t feixiao/cpp_build

# Launch
docker-compose up -d

docker run -dit feixiao/cpp_build /bin/bash
```


### 基于Ubuntu18.04 打造自己的工作平台
+ build
docker build ./ -t feixiao/workbeach

+ Launch
    ```
    docker-compose up -d

    docker run -dit -p 10000:22 feixiao/workbench:1.1 /bin/bash -v D:\volumes\golang:/home/frank/gopath:cached
    ```


### 参考资料
+ [非root用户没有权限使用docker](https://blog.csdn.net/ken1583096683/article/details/82813111)
+ [ERROR: Pool overlaps with other one on this address space](http://zizhixiaoshe.com/article/21.html)
+ [《如何解决docker volume 共享文件下项目访问速度极慢?》](https://segmentfault.com/q/1010000011417846)