<div align="right">
  <a href="README.pt-BR.md">
    <img src="https://img.shields.io/badge/Language-Portugu%C3%AAs-blue?style=for-the-badge" alt="Versão em Português">
  </a>
</div>

# Windows Security Auditor (`exe.bat`)

> A standalone, single-file Windows audit tool designed to inspect recently installed or updated programs, Windows apps, and browser extensions to detect unwanted software, telemetry, or surveillance bots.

![Windows](https://img.shields.io/badge/Windows-10%20%7C%2011-0078D6?logo=windows&logoColor=white)
![Platform](https://img.shields.io/badge/Architecture-x64%20%7C%20ARM64-lightgrey)
![License](https://img.shields.io/badge/License-MIT-green)

---

## ⚡ Zero Configuration (Single-File Architecture)

**This repository distributes only the `exe.bat` file.**

- **No installation or setup is needed.**
- The persistent filter file (`whitelist.txt`) is **automatically created** in the same folder the first time you click to ignore any publisher or software name.
- You do not need to download or configure any extra files. Simply keep `exe.bat` in a dedicated folder (e.g., `C:\SecurityAuditor\` or a local tools folder).

---

## 🔍 Features

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

---

## 🚀 How to Use

1. Download **`exe.bat`** from this repository.
2. Place it in a folder of your choice (e.g., `Documents\SecurityAuditor\`).
3. Double-click **`exe.bat`** to run.
   > **Tip:** To audit all user profiles on the computer, right-click `exe.bat` and select **Run as administrator**.

---

## 📄 License

This project is licensed under the [MIT License](LICENSE).
