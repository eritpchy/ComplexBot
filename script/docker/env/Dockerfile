FROM openjdk:11.0.8-jdk-slim AS builder
WORKDIR target/dependency
ARG APPJAR=target/*.jar
COPY ${APPJAR} app.jar
RUN jar -xf ./app.jar

FROM openjdk:11.0.8-jre-slim
WORKDIR /app
VOLUME /tmp
ENV LANG C.UTF-8
ENV TZ Asia/Shanghai
ARG DEPENDENCY=target/dependency
COPY --from=builder ${DEPENDENCY} /app
COPY ./files/wait-for-it.sh /app/
RUN chmod +x /app/wait-for-it.sh
CMD ["bash", "/app/wait-for-it.sh", "--timeout=60", "complexbot-python:48519", "--", "bash", "/app/wait-for-it.sh", "--timeout=30", "complexbot-mongodb:27017", "--", "java", "-Dcomplexbot.backend.host=complexbot-python", "-Dcomplexbot.backend.noinstance=true", "-XX:MaxRAMPercentage=85.0", "-cp", "/app", "com.kenvix.moecraftbot.ng.Main", "-d", "complexbot", "-vvv", "--nogui"]