FROM oven/bun:alpine AS builder

WORKDIR /app

COPY package.json bun.lock ./

RUN bun install --frozen-lockfile

COPY . .

RUN bun run build

FROM nginx:1.29-alpine

RUN mkdir -p /etc/nginx/snippets

RUN rm -rf /etc/nginx/conf.d/*

COPY snippets/security.conf /etc/nginx/snippets/security.conf

COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY --from=builder /app/dist /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]