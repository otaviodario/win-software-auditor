<div align="center">

# Windows Security Auditor (`exe.bat`)

[![English Version](https://img.shields.io/badge/Language-English-blue?style=for-the-badge)](#-english-version)
[![Versão em Português](https://img.shields.io/badge/Language-Portugu%C3%AAs-green?style=for-the-badge)](#-versão-em-português)

<br/>

![Windows](https://img.shields.io/badge/Windows-10%20%7C%2011-0078D6?logo=windows&logoColor=white)
![Platform](https://img.shields.io/badge/Architecture-x64%20%7C%20ARM64-lightgrey)
![License](https://img.shields.io/badge/License-MIT-green)

</div>

---

<a name="english-version"></a>
## 🇺🇸 English Version

> A standalone, single-file Windows audit tool designed to inspect recently installed or updated programs, Windows apps, and browser extensions to detect unwanted software, telemetry, or surveillance bots.

### ⚡ Zero Configuration (Single-File Architecture)

**This repository distributes only the `exe.bat` file.**

- **No installation or setup is needed.**
- The persistent filter file (`whitelist.txt`) is **automatically created** in the same folder the first time you click to ignore any publisher or software name.
- You do not need to download or configure any extra files. Simply keep `exe.bat` in a dedicated folder (e.g., `C:\SecurityAuditor\` or a local tools folder).

### 🔍 Features

- **Deep System Inspection:**
  - **Desktop Programs (Win32):** Queries Windows Registry uninstall trees (both 32-bit and 64-bit).
  - **Modern Windows Apps (Appx/UWP):** Inspects installation and update timestamps.
  - **Browser Extensions:** Scans extension directories for Google Chrome and Microsoft Edge.
- **Precise Timestamps:** Displays the exact date and time (down to the minute) when software was installed or updated.
- **Dynamic Lookback Filter:** Defaults to the last 30 days, easily adjustable directly inside the UI.
- **Interactive Whitelist:**
  - **Ignore Publisher:** Hides all software from trusted vendors (e.g., *Microsoft Corporation*) with one click.
  - **Ignore Name:** Hides specific software names (useful when the publisher is listed as `Unknown`).
  - **Restore:** Bring any ignored item back to the analysis at any time.
- **Responsive UI:** Full maximization and resize support for high-resolution displays.
- **Silent Engine:** Hides the command prompt automatically once the graphical window opens.

### 🚀 How to Use

1. Download **`exe.bat`** from this repository.
2. Place it in a folder of your choice (e.g., `Documents\SecurityAuditor\`).
3. Double-click **`exe.bat`** to run.
   > **Tip:** To audit all user profiles on the computer, right-click `exe.bat` and select **Run as administrator**.

[⬆ Back to Top](#windows-security-auditor-exebat)

---

<a name="versão-em-português"></a>
## 🇧🇷 Versão em Português

> Uma ferramenta de auditoria para Windows em arquivo único (`exe.bat`) projetada para listar softwares, aplicativos e extensões instalados ou atualizados recentemente, facilitando a detecção de spywares, bots de vigilância ou ferramentas indesejadas.

### ⚡ Configuração Zero (Arquivo Único)

**Este repositório distribui unicamente o arquivo `exe.bat`.**

- **Sem necessidade de instaladores ou dependências.**
- O arquivo de regras persistentes (`whitelist.txt`) é **gerado de forma 100% automática** na mesma pasta assim que você clica em ignorar um fabricante ou programa pela primeira vez.
- Você não precisa criar nem baixar nada além do `exe.bat`. Recomenda-se apenas mantê-lo dentro de uma pastinha própria (ex: `C:\SecurityAuditor\` ou dentro de `Documentos`).

### 🔍 Funcionalidades

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

### 🚀 Como Usar

1. Baixe o arquivo **`exe.bat`** deste repositório.
2. Coloque-o em uma pasta dedicada (ex: `Documentos\SecurityAuditor\`).
3. Dê dois cliques em **`exe.bat`** para abrir.
   > **Dica:** Para auditar todos os usuários da máquina, clique com o botão direito em `exe.bat` e escolha **Executar como Administrador**.

[⬆ Voltar ao Topo](#windows-security-auditor-exebat)

---

## 📄 License / Licença

Distributed under the [MIT License](LICENSE).
