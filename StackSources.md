
## 🚜 [farm-tugboat-demo](https://github.com/paul121/farm-tugboat-demo)

**What it does**  
A simple Vue.js demo site for launching ephemeral farmOS previews via Tugboat, with automatic Netlify Function‑powered orchestration. Each demo runs for ~12 hours. :contentReference[oaicite:0]{index=0}

**Components**  
- **Vue frontend** in `/src`  
- **Netlify Functions** (`create-preview.js`, `get-preview.js`, `get-preview-login-link.js`) for Tugboat API access  
- **Tugboat config** in `/.tugboat` for preview setup  
- `docker-compose`‑enabled farmOS instance & Mapbox demo data :contentReference[oaicite:1]{index=1}

**Last update**  
Last commit June 27 2023. :contentReference[oaicite:2]{index=2}

**Maturity**  
🧪 Proof-of-concept—not production-grade. Suitable for experimentation/demo use.

---

## 🌾 [OADA (Open Ag Data Alliance)](https://github.com/OADA/)

**What it does**  
An open-source ecosystem for agricultural data interoperability and privacy-preserving sharing.

**Components**  
- **Server**: TypeScript reference API server (microservices, Docker‑Compose/Kubernetes/Helm) :contentReference[oaicite:3]{index=3}  
- **Client**: `@oada/client` for JS HTTP/WebSocket interactions :contentReference[oaicite:4]{index=4}  
- **Formats**: JSON‑Schema–based data formats  
- **API Spec**: RAML‑defined spec in `oada-api-spec` repo :contentReference[oaicite:5]{index=5}  
- **Utility libs**: e.g. `oada-lookup-js` :contentReference[oaicite:6]{index=6}

**Last update**  
Multiple repos active mid‑2025; `oada-api-spec` last commit ~1.2 years ago (early 2024) :contentReference[oaicite:7]{index=7}

**Maturity**  
⚙️ Well‑structured with mature reference stacks. Adoption in pilots; ready for production deployments, though still evolving.

---

## 🔐 [OpenSC](https://github.com/OpenSC/OpenSC)

**What it does**  
A PKCS#11, Smart Card Minidriver, CryptoTokenKit library suite to interface with smart‑cards and crypto tokens—enabling authentication, signatures, encryption, etc. :contentReference[oaicite:8]{index=8}

**Components**  
- **libopensc**: C library for PKCS#11, Minidriver, CryptoTokenKit integration  
- **`opensc-pkcs11.so`**: PKCS#11 module wrapped by p11‑kit/pcscd :contentReference[oaicite:9]{index=9}  
- **CLI tools**: e.g. `pkcs15-tool`, `pkcs11-tool`  
- **Smart‑card configuration**: Secure messaging APDU layers :contentReference[oaicite:10]{index=10}

**Last update**  
Actively maintained; latest version ≥0.23 (late 2024), with ongoing fixes. :contentReference[oaicite:11]{index=11}

**Maturity**  
✅ Very mature and widely used in Linux distributions and enterprise setups.

---

## ☕ [farmerconnect](https://github.com/farmerconnect)

**What it does**  
An open‑source complement to Farmer Connect’s commercial offering: React/Mapbox UI components, Storybook interface for supply‑chain traceability.

**Components**  
- **`farmerconnect-ui`**: React/TypeScript components / Storybook UI :contentReference[oaicite:12]{index=12}  
- **Mapbox integrations**: `react-map-gl`, clustering plugins :contentReference[oaicite:13]{index=13}  
- Likely paired in company’s closed‑source backend/blockchain platforms

**Last update**  
Public UI components last updated Aug 16 / 28 2023; active repo archive. :contentReference[oaicite:14]{index=14}

**Maturity**  
🧩 These OSS parts are stable UI building blocks, but do not include the full blockchain/supply‑chain infrastructure. Commercial platform is mature; open‑source repos are archived/stable.

---

### 📋 Summary Table

| Project               | Last Update         | Components                                                             | Maturity                                |
|-----------------------|---------------------|------------------------------------------------------------------------|-----------------------------------------|
| **farm-tugboat-demo** | Jun 27 2023         | Vue frontend, Netlify functions, Tugboat config, farmOS demo          | ⭐ Experimental/demo level               |
| **OADA**              | Early 2024 / mid‑2025 | TS API server, client lib, formats, RAML spec, lookup utils           | ⚙️ Production-ready, active, evolving   |
| **OpenSC**            | Late 2024+          | libopensc, PKCS#11 middleware, CLI tools, config                      | ✅ Enterprise-grade, very mature        |
| **farmerconnect**     | Aug 2023 (UI)       | React UI components, Mapbox libs, Storybook showcase                  | 🛠️ Stable UI libs; full system is mature closed-platform |

---

