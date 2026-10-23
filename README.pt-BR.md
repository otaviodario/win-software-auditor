<div align="right">
  <a href="README.md">
    <img src="https://img.shields.io/badge/Language-English-blue?style=for-the-badge" alt="English Version">
  </a>
</div>

# Windows Security Auditor (`exe.bat`)

> Uma ferramenta de auditoria para Windows em arquivo único (`exe.bat`) projetada para listar softwares, aplicativos e extensões instalados ou atualizados recentemente, facilitando a detecção de spywares, bots de vigilância ou ferramentas indesejadas.

![Windows](https://img.shields.io/badge/Windows-10%20%7C%2011-0078D6?logo=windows&logoColor=white)
![Licença](https://img.shields.io/badge/Licen%C3%A7a-MIT-green)

---

## ⚡ Configuração Zero (Arquivo Único)

**Este repositório distribui unicamente o arquivo `exe.bat`.**

- **Sem necessidade de instaladores ou dependências.**
- O arquivo de regras persistentes (`whitelist.txt`) é **gerado de forma 100% automática** na mesma pasta assim que você clica em ignorar um fabricante ou programa pela primeira vez.
- Você não precisa criar nem baixar nada além do `exe.bat`. Recomenda-se apenas mantê-lo dentro de uma pastinha própria (ex: `C:\SecurityAuditor\` ou dentro de `Documentos`).

---

## 🔍 Funcionalidades

- **Varredura Completa do Sistema:**
  - **Programas Clássicos (Desktop):** Varre registros de 32 e 64 bits do Windows.
  - **Apps Modernos (Appx / Loja Windows):** Monitora criação e atualização de pacotes.
  - **Extensões de Navegador:** Varre pastas de extensões do Google Chrome e Microsoft Edge.
- **Data e Hora Precisas:** Identifica o momento exato da alteração/instalação.
- **Filtro de Dias na Interface:** Padrão de 30 dias retroativos, ajustável diretamente na tela através do botão *Apply Filter*.
- **Lista de Ignorados (Whitelist Automática):**
  - **Ignore Publisher:** Oculta todos os programas de uma fabricante confiável (ex: *Microsoft Corporation*) com um clique.
  - **Ignore Name:** Oculta pelo nome exato do aplicativo (ideal para quando o fabricante for `Unknown`).
  - **Restore:** Restaura qualquer item de volta para análise quando desejar.
- **Interface Responsiva:** Suporte completo a tela cheia / maximização sem distorcer as tabelas.
- **Execução Limpa:** O terminal preto (CMD) desaparece sozinho assim que o painel gráfico carrega.

---

## 🚀 Como Usar

1. Baixe o arquivo **`exe.bat`** deste repositório.
2. Coloque-o em uma pasta dedicada (ex: `Documentos\SecurityAuditor\`).
3. Dê dois cliques em **`exe.bat`** para abrir.
   > **Dica:** Para auditar todos os usuários da máquina, clique com o botão direito em `exe.bat` e escolha **Executar como Administrador**.

---

## 📄 Licença

Distribuído sob a licença [MIT](LICENSE).
