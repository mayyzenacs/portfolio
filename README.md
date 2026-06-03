<div align="center">

# Software Engineer Portfolio

  **Engenharia • Segurança • Infraestrutura**

![Status](https://img.shields.io/website?url=https%3A%2F%2Fmayradev.me&up_message=online&style=flat-square)
![Nginx](https://img.shields.io/badge/Nginx-Hardened-green?logo=nginx&style=flat-square)
![Cloudflare](https://img.shields.io/badge/Cloudflare-%20DNS-orange?logo=cloudflare&style=flat-square)
![DigitalOcean](https://img.shields.io/badge/DigitalOcean-%20VPS-blue?logo=digitalocean&style=flat-square)

<p><a href="https://mayradev.me"><strong>Visite o site</strong></a>
</div>

Este projeto migra a segunda versão do portfólio que utilizava docker multi-stage para fins de aprendizado. Esta versão simplifica o processo utilizando o deploy dos arquivos estáticos pela pipeline automatizada no GitHub Actions.

O objetivo dessa migração é otimizar recursos na VPS implementando a infraestrutura adequada para o propósito do projeto. O site one-page é focado em performance e segurança com Nginx configurado detalhadamente com secure headers e sendo utilizado como servidor web.

### Ganhos de Engenharia:

**Zero Overhead no Host:** O runner do GitHub Actions assume toda a carga de processamento do build. A VPS não gasta 1% de CPU com compilação.

**Entrega Pura:** O Nginx Alpine atua puramente como **Web Server de alta performance**, servindo os arquivos estáticos pré-compilados diretamente do disco/memória.

**Nginx Master Container:** Desvinculado o Nginx master da estrutura do portfólio, ele atua com suas próprias configurações, abrindo margem para novos projetos na VPS e maior liberdade de personalização sem interferências no portfólio.

## Stack

- **Vite:** Build otimizado.
- **Nginx Alpine:** Security headers ativos (HSTS, CSP, X-Frame-Options) e logs reduzidos (apenas erros 4xx/5xx).
- **VPS DigitalOcean (Ubuntu):** Swap ativo e acesso exclusivo via SSH only. Firewall (UFW) configurado.
- **Cloudflare:** Proxy ativo SSL Full Strict.
- **Github Actions:** Automação completa do pipeline (CI/CD), compila o projeto com Bun e serve os arquivos via SCP(Secure Copy Protocol).

## Instalação e Execução

Clone o repositório

```shell
git clone https://github.com/mayyzenacs/portfolio.git
```

Instale as dependências

```shell
bun install
```

Rode no ambiente de desenvolvedor

```shell
bun run dev
```
