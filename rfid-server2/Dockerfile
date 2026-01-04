# 创建 Dockerfile
FROM alpine:latest

WORKDIR /app

RUN apk add --no-cache ca-certificates tzdata

ENV TZ=Asia/Shanghai

COPY personnel_IO .

RUN chmod +x personnel_IO

EXPOSE 18899

CMD ["./personnel_IO"]