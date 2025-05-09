document.addEventListener("DOMContentLoaded", function () {
  console.log("JS carregado com sucesso");

  const links = document.querySelectorAll(".sidebar-menu a");
  const abas = document.querySelectorAll(".aba-conteudo");

  links.forEach((link) => {
    link.addEventListener("click", function (e) {
      e.preventDefault();
      const abaAlvo = this.getAttribute("data-aba");
      console.log("Link clicado:", abaAlvo);

      links.forEach((l) => l.classList.remove("ativa"));
      abas.forEach((aba) => aba.classList.remove("ativa"));

      this.classList.add("ativa");

      const abaMostrar = document.getElementById(`conteudo-${abaAlvo}`);
      if (abaMostrar) {
        abaMostrar.classList.add("ativa");
      } else {
        console.warn(`Elemento com id "conteudo-${abaAlvo}" não encontrado.`);
      }
    });
  });

  // Ativa a aba inicial
  document.querySelector('.sidebar-menu a[data-aba="introducao"]').click();
});
