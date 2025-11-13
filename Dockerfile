FROM eclipse-temurin:17-jre

WORKDIR /app

ENV TZ=Asia/Shanghai

# 安装 curl 和 C++ 运行时库
RUN apt-get update && \
    apt-get install -y curl libstdc++6 && \
    rm -rf /var/lib/apt/lists/*

# 复制 jar 包
COPY target/*.jar app.jar

# 复制海康 SDK 库文件
COPY target/lib-linux /app/lib

# 添加详细的调试信息
RUN echo "=== 创建符号链接前 ===" && \
    ls -la /app/ && \
    echo "=== 创建符号链接 ===" && \
    ln -s /app/lib /app/lib-linux && \
    echo "=== 创建符号链接后 ===" && \
    ls -la /app/ && \
    ls -la /app/lib-linux

# 设置库路径环境变量
ENV LD_LIBRARY_PATH=/app/lib

EXPOSE 8080

ENV JAVA_OPTS="-Xms512m -Xmx1024m -XX:+UseG1GC -XX:MaxGCPauseMillis=200"

HEALTHCHECK --interval=30s --timeout=3s --start-period=60s --retries=3 \
  CMD curl -f http://localhost:8080/actuator/health || exit 1

CMD ["java", "-Djava.library.path=/app/lib", "-jar", "/app/app.jar"]