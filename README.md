# 咕咕咕! 多功能复合 Bot

集成精准广告拦截/消息监视与统计/迎新/验证码识别/算卦等功能的复合机器人

#### 运行(两种方式均可, 任选其一)
    1. docker 方式(Windows/macOS)
        - config/config/complexbot.sample.yml 改名为 config/config/complexbot.yml
        - config/config/system.sample.yml 改名为 config/config/system.yml
        - 修改配置文件config/config/complexbot.yml
        - 修改配置文件config/config/system.yml
        - docker run -d --name complexbot-mongodb --restart=always -p 27017:27017 eritpchy/complexbot:mongodb
        - docker run -d --name complexbot-python --restart=always eritpchy/complexbot:python
        - docker run -d --name complexbot-env --restart=always --link complexbot-mongodb --link complexbot-python \
            -v <path to complexbot.yml>:/app/config/config/complexbot.yml:ro \
            -v <path to system.yml>:/app/config/config/system.yml:ro \
            eritpchy/complexbot:env
    1. docker 方式(Linux)
        - config/config/complexbot.sample.yml 改名为 config/config/complexbot.yml
        - config/config/system.sample.yml 改名为 config/config/system.yml
        - 修改配置文件config/config/complexbot.yml
        - 修改配置文件config/config/system.yml
        - 建个文件夹data用来存数据库文件
        - docker run -d --name complexbot-mongodb --restart=always -p 27017:27017 -v <path to data>:/data/db eritpchy/complexbot:mongodb
        - docker run -d --name complexbot-python --restart=always eritpchy/complexbot:python
        - docker run -d --name complexbot-env --restart=always --link complexbot-mongodb --link complexbot-python \
            -v <path to complexbot.yml>:/app/config/config/complexbot.yml:ro \
            -v <path to system.yml>:/app/config/config/system.yml:ro \
            eritpchy/complexbot:env
    2. docker-compose 方式
        - config/config/complexbot.sample.yml 改名为 config/config/complexbot.yml
        - config/config/system.sample.yml 改名为 config/config/system.yml
        - 修改配置文件config/config/complexbot.yml
        - 修改配置文件config/config/system.yml
        - 执行script/docker/build/hub.docker.com/docker-run.sh

### 注意事项
    - 第一次运行可能会出现登录验证链接, 复制到浏览器中验证即可, 注意查看docker日志(docker logs -f complexbot-env)
    - macOS/Linux 直接运行时java需要添加VM Options 参数-Dcomplexbot.backend.noinstance=true 否则会卡死在com.kenvix.complexbot.ComplexBotDriver#loadBackend$KMiraiBot_main, docker是分开部署的, 没有这个问题