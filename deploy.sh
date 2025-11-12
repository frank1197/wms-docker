#!/bin/bash
set -e

echo "===== 开始部署 ====="

# 1. 检查 jar 包
echo "[1/5] 检查 jar 包..."
if [ ! -f target/*.jar ]; then
    echo "错误: 没有找到 jar 包，请先运行 mvn clean package"
    exit 1
fi

# 2. 创建目录
echo "[2/5] 创建必要的目录..."
mkdir -p mysql/conf mysql/init logs

# 3. 检查配置文件
echo "[3/5] 检查配置文件..."

# 4. 清理并构建
echo "[4/5] 构建镜像..."
docker compose down -v 2>/dev/null || true
docker build -t springboot-app:latest .

# 5. 启动服务
echo "[5/5] 启动服务..."
docker compose up -d

echo ""
echo "===== 部署完成 ====="
echo "Spring Boot: http://localhost:8080"
echo "MySQL:       localhost:3406 (root/root123456)"
echo "Redis:       localhost:6479 (密码: redis123456)"
echo ""
echo "查看日志: docker compose logs -f"
echo "停止服务: docker compose down"
