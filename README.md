<div align="center">

# Software Engineer Portfolio

  **Engenharia de Software • Frontend otimizado • Infraestrutura**

![Status](https://img.shields.io/website?url=https%3A%2F%2Fmayradev.me&up_message=online&style=flat-square)
![Nginx](https://img.shields.io/badge/Nginx-Hardened-green?logo=nginx&style=flat-square)
![Docker](https://img.shields.io/badge/Docker-Multi--Stage-blue?logo=docker&style=flat-square)
![Cloudflare](https://img.shields.io/badge/Cloudflare-%20SSL--Strict-orange?logo=cloudflare&style=flat-square)
![Cloudflare](https://img.shields.io/badge/DigitalOcean-%20VPS-blue?logo=digitalocean&style=flat-square)  
<p><a href="https://mayradev.me"><strong>Visite o site</strong></a>
</div>

Este projeto migra a primeira versão com render e IaC para uma VPS Ubuntu configurada no Droplet da DigitalOcean.
  
O objetivo dessa migração de infraestrutura é demonstrar habilidades em Engenharia de Software e DevOps. O site one-page é focado em perfomance e segurança com Nginx configurado detalhadamente com secure headers essenciais. O uso de Docker faz com que a aplicação seja reprodutível e permite a hospedagem eficiente na VPS da DigitalOcean.

## 🛠️ Stack Tecnológico

- **Vite:** Build otimizado com _code splitting_ (`manualChunks`) e cache-busting via hash nos arquivos.
    
- **Docker Multi-stage:** Separação de Build (Node) e Runtime (Nginx Alpine). Imagem final < 30MB, gerenciada via Compose com _healthcheck_.
    
- **Nginx Alpine:** HTTP/2 e cache estático longo. Security headers ativos e logs reduzidos (apenas erros 4xx/5xx).
    
- **VPS DigitalOcean (Ubuntu):** Swap ativo e acesso exclusivo via chave SSH. Firewall (UFW) liberado apenas para IPs da Cloudflare. Acesso SSH only.
    
- **Cloudflare:** Proxy ativo, SSL Full Strict. Compressão Zstandard/Brotli. (68.23% de compressão)


## Instalação e Execução

Clone o repositório

```shell
git clone https://github.com/mayyzenacs/portfolio.git
```

Instale as dependências

```shell
npm ci
```

Rode no ambiente de desenvolvedor

```shell
npm run dev
```
