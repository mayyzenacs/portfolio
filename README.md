# Portfólio Pessoal

![Status](https://img.shields.io/badge/Status-Em_Desenvolvimento-yellow)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=flat&logo=docker&logoColor=white)
![Nginx](https://img.shields.io/badge/Nginx-009639?style=flat&logo=nginx&logoColor=white)
![Vite](https://img.shields.io/badge/Vite-646CFF?style=flat&logo=vite&logoColor=white)
![Bootstrap](https://img.shields.io/badge/Bootstrap-563D7C?style=flat&logo=bootstrap&logoColor=white)

Portfólio pessoal desenvolvido com foco em performance, boas práticas de Engenharia de Software e DevOps. O projeto implementa um pipeline de build otimizado e containerização para ambientes de produção.

## 🚀 Tecnologias e Arquitetura

### Frontend

- **Core:** HTML5, CSS3, JavaScript.
- **Build Tool:** Vite para bundling, minificação e Hot Module Replacement (HMR).
- **UI Framework:** Bootstrap 5.3 (via NPM).
- **Otimização:** Uso de imagens WebP comprimidas e estratégia de `loading="lazy"`.

### DevOps & Infraestrutura

- **Containerização:** Docker com estratégia **Multi-Stage Build**.
  - _Stage 1 (Builder):_ Node.js 24-alpine para instalar dependências (npm ci) e gerar os arquivos estáticos.
  - _Stage 2 (Runner):_ Nginx 1.29-alpine para servir o conteúdo. Imagem final extremamente leve (<40MB).
- **Servidor Web:** Nginx configurado com rotas personalizadas e cabeçalhos de segurança.
- **Deploy:** Automatizado no **Render** utilizando **Infrastructure as Code (IaC)** via `render.yaml` (Blueprint).

## 🛠️ Como rodar localmente

### Instalação desenvolvimento local

### Clone o repositório

```
git clone https://github.com/mayyzenacs/portfolio.git
```

### Instale as dependências

```
npm ci
```

### Rode

```
npm run dev
```

### Rodando via Docker

```
docker compose up --build
```
