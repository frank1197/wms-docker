# 创建 Dockerfile
FROM alpine:latest

WORKDIR /app

RUN apk add --no-cache ca-certificates tzdata

ENV TZ=Asia/Shanghai

COPY zasRFID .

RUN chmod +x zasRFID

EXPOSE 18898

CMD ["./zasRFID"]