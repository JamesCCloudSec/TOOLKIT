## Field Security Toolkit (Personal Operations Framework)

**This file documents the structure, contents, and operational usage of my portable cybersecurity toolkit. It reflects hands-on practice with encryption, system hardening, partition control, backup management, and client readiness. This project was designed and tested independently to simulate professional deployment scenarios.**

**Status:** Fully tested on personal systems. Ready for field deployment. Not built under contract.

---

## Toolkit Layout

D:
│ ├── CONFIG ├── DOCS ├── INSTALLERS ├── OPERATING SYSTEMS ├── TRAINING ├── VAULT (VeraCrypt Encrypted Partition)

---

## CONFIG — Operational Scripts

Scripts are categorized by purpose and include launchers and readmes for clarity.

- `Backup/`: Creates secure folder structures for manual or scheduled backups  
- `Bluetooth/`: Enables or disables Bluetooth at the registry and device level with .bat launchers  
- `Firewall/`: Blocks LAN subnet ranges while preserving gateway connectivity (for travel/public Wi-Fi scenarios)  
- `System/`: Generates full system audit reports for incident triage or diagnostics  

**🛠Resume Highlight:**  
**PowerShell automation, LAN isolation scripting, Windows registry control, endpoint hardening**

---

## DOCS — Documentation & Client Logs

- `Operator Documents`: Advanced incident response materials and personal workflows  
- `Rina’s Traditions`: Documentation and logs for a live (upcoming) client deployment  
- `Templates`: Reusable forms for session logs and incident reporting  

**🛠Resume Highlight:**  
**Process documentation, incident readiness, client workflow engineering**

---

## INSTALLERS — Security & Diagnostic Tools

Includes core tools for system visibility, integrity, and defense:

- `Bitwarden`, `Wireshark`, `Nmap`, `SyncBackFree`, `Malwarebytes`, `VeraCrypt`, `CrowdSec`
- Plus essential utilities like `7-Zip`, `Firefox`, `VirtualBox`, `ProtonVPN` 

**🛠Resume Highlight:**  
**Security stack deployment, live response tooling, open-source security integration**

---

## OPERATING SYSTEMS — Bootable ISO Recovery Environment

Stored ISOs for emergency boot or system imaging, run through **Ventoy**.

- `Kali`, `RescueZilla`, `ShredOS`, `HBCD`, `GParted`, `Ubuntu`, `Windows 10/11`  
- Includes guide to disable Secure Boot if needed  

**🛠Resume Highlight:**  
**System imaging, disk recovery, forensics boot media, multiboot USB preparation**

---

## TRAINING — Security Education & Client Readiness

Organized self-training and instructional material:

- `Applications`: Bitwarden usage and deployment  
- `Backup`: Restore points vs system images vs full backups  
- `General Security`: Best practices documentation  
- `Phishing`: Slide deck, test links, and a teaching script  
- `Threat Response`: Placeholder for future IR learning modules  

**🛠Resume Highlight:**  
**Security awareness training, client education design, technical writing**

---

## VAULT — Encrypted Data Partition

Fully encrypted partition managed via **VeraCrypt**:

- Stores logs, client credentials, reports, and sensitive backups  
- Accessible only via password or keyfile authentication  

**🛠Resume Highlight:**  
**Data-at-rest encryption, secure vault design, access control in field toolkit environments**

---

## Design Principles

- **Modular**: Easily updatable without toolchain conflicts  
- **Secure**: Offline storage, encrypted layers, isolated scripts  
- **Practical**: Usable in the field without dependencies or cloud access  
- **Documented**: Every step logged and recoverable  

---

## Toolkit Usage Scenarios

- On-site system hardening and configuration  
- Backup creation and validation  
- Security training for users and small businesses  
- Emergency system imaging or recovery  

---

## Maintained by

**James Castro**  
[github.com/JamesCCloudSec](https://github.com/JamesCCloudSec)  
*Toolkit last updated: April 12, 2025*
