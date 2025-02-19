# 使用 Node.js 官方輕量級鏡像
FROM node:20-alpine

# 設置工作目錄
WORKDIR /app

# 只複製必要的文件
COPY package.json pnpm-lock.yaml ./

# 安裝 pnpm
RUN npm install -g pnpm

# 安裝依賴，並使用 --production 僅安裝生產依賴
RUN pnpm install --production

# 複製腳本和源代碼
COPY . .

# 設置可執行權限
RUN chmod +x /app/cli

# 使用 tsx 作為運行時
ENTRYPOINT ["pnpm", "tsx", "./cli"]