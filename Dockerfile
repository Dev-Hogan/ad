FROM --platform=linux/amd64 node:19-bullseye-slim

WORKDIR /app

COPY . .
RUN npm -g install pnpm 
RUN pnpm config set registry https://registry.npmmirror.com
RUN pnpm install
RUN pnpm build

EXPOSE 3000

CMD ["pnpm","start"]
