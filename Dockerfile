FROM node:20-alpine AS builder

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm ci

COPY . .

RUN npm run build

FROM nginx:1.29-alpine

RUN mkdir -p /etc/nginx/snippets

RUN rm /etc/nginx/conf.d/default.conf

COPY snippets/security.conf /etc/nginx/snippets/security.conf

COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY --from=builder /app/dist /usr/share/nginx/html

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]

