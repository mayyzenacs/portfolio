FROM node:24-alpine AS builder

WORKDIR /app

COPY package.json package-lock.json ./

# para não quebrar os packages, se limita a seguir as versões solicitadas.
RUN npm ci

COPY . .

RUN npm run build

FROM nginx:1.29-alpine

RUN rm /etc/nginx/conf.d/default.conf

COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY --from=builder /app/dist /usr/share/nginx/html

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]