FROM eclipse-temurin:17-jre-alpine

WORKDIR /app

ENV TZ=Asia/Shanghai

# 修复：正确的多行命令格式
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && \
    apk update && \
    apk add --no-cache \
        iputils \
        busybox-extras \
        curl

# 确保 busybox 工具可用
RUN ln -sf /bin/busybox /usr/bin/telnet && \
    ln -sf /bin/busybox /usr/bin/nc

# 验证网络工具安装
RUN which ping && which telnet && which nc && which curl

COPY target/*.jar app.jar

EXPOSE 8080

ENV JAVA_OPTS="-Xms512m -Xmx1024m -XX:+UseG1GC -XX:MaxGCPauseMillis=200"

HEALTHCHECK --interval=30s --timeout=3s --start-period=60s --retries=3 \
  CMD curl -f http://localhost:8080/actuator/health || exit 1

CMD ["java", "-jar", "/app/app.jar"]
