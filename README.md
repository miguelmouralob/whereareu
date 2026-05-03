# 🌍 WherAreU

> App de localização compartilhada em tempo real entre amigos — sem cadastro, sem conta, sem complicação.

![HTML](https://img.shields.io/badge/HTML-E34F26?style=flat&logo=html5&logoColor=white)
![Firebase](https://img.shields.io/badge/Firebase-FFCA28?style=flat&logo=firebase&logoColor=black)
![Netlify](https://img.shields.io/badge/Netlify-00C7B7?style=flat&logo=netlify&logoColor=white)

---

## ✨ O que é

**WherAreU** é uma PWA (Progressive Web App) que permite que duas pessoas vejam a localização uma da outra em tempo real num mapa interativo, com informações de distância, direção, fuso horário e estimativas de tempo de viagem.

Ideal para saber onde um amigo está, acompanhar alguém em trânsito, ou simplesmente explorar a distância entre dois pontos no mundo.

---

## 🚀 Funcionalidades

- 📍 **Localização em tempo real** via GPS do dispositivo
- 🗺️ **Mapa interativo** com marcadores personalizados para cada usuário
- 📏 **Distância em linha reta** entre os dois pontos
- 🧭 **Direção em graus** e ponto cardeal (dos dois lados)
- 🌐 **Fuso horário estimado** de cada usuário, com alerta se forem diferentes
- ✈️ **Estimativas de tempo de viagem** — avião, carro/ônibus e a pé
- 🔑 **Sistema de salas** com código de 4 letras — sem cadastro
- 🔒 **Dados apagados automaticamente** ao fechar o site
- 📱 **Responsivo** — funciona em celular e desktop

---

## 🏗️ Tecnologias

| Tecnologia | Uso |
|---|---|
| HTML / CSS / JavaScript | Frontend completo (single file) |
| [Leaflet.js](https://leafletjs.com/) | Mapa interativo |
| [Firebase Realtime Database](https://firebase.google.com/) | Sincronização de posições em tempo real |
| [Netlify](https://netlify.com/) | Hospedagem com HTTPS e deploy automático |
| [CartoDB Dark Matter](https://carto.com/basemaps/) | Tiles do mapa (tema escuro) |
| Google Fonts (Space Mono + Syne) | Tipografia |

---

## 📁 Estrutura do repositório

```
wherareu/
├── friend-locator.html   # App completo (frontend single-file)
├── netlify.toml          # Configuração de build e deploy do Netlify
├── build.sh              # Script que injeta variáveis de ambiente no HTML
├── .gitignore            # Arquivos ignorados pelo Git
└── README.md             # Este arquivo
```

---

## ⚙️ Como rodar localmente

> Requisito: ter um servidor local com HTTPS ou usar uma extensão como **Live Server** no VS Code — browsers modernos bloqueiam geolocalização em `file://`.

1. Clone o repositório:
   ```bash
   git clone https://github.com/miguelmouralob/wherareu.git
   cd wherareu
   ```

2. Crie um projeto no [Firebase Console](https://console.firebase.google.com/), ative o **Realtime Database** e copie suas credenciais.

3. Substitua os placeholders no `friend-locator.html` com suas credenciais Firebase.

4. Abra com Live Server ou qualquer servidor local com HTTPS.

---

## 🌐 Deploy (Netlify)

O projeto usa um script de build (`build.sh`) que injeta as credenciais Firebase via variáveis de ambiente do Netlify — mantendo as chaves fora do código versionado.

### Variáveis de ambiente necessárias no Netlify:

| Variável | Descrição |
|---|---|
| `FIREBASE_API_KEY` | Chave de API do Firebase |
| `FIREBASE_AUTH_DOMAIN` | Domínio de autenticação |
| `FIREBASE_DATABASE_URL` | URL do Realtime Database |
| `FIREBASE_PROJECT_ID` | ID do projeto |
| `FIREBASE_STORAGE_BUCKET` | Bucket de storage |
| `FIREBASE_MESSAGING_SENDER_ID` | ID do sender |
| `FIREBASE_APP_ID` | ID do app web |

Configure em: **Project configuration → Environment variables**

---

## 🔒 Segurança

- Comunicação via **HTTPS** em todas as etapas
- Salas identificadas por **código aleatório** — sem listagem pública
- Posições **apagadas automaticamente** do banco ao fechar o site (`beforeunload` + `pagehide`)
- Regras do Firebase validam formato e tipos dos dados gravados
- Nenhuma informação pessoal além de nome e coordenadas GPS é armazenada

---

## 🗺️ Como usar

1. Acesse [whereareulocator.netlify.app](https://whereareulocator.netlify.app)
2. Digite seu nome e clique em **"Criar sala"**
3. Compartilhe o código de 4 letras com seu amigo
4. Seu amigo acessa o mesmo link, digita o nome e o código e clica **"Entrar na sala"**
5. Os dois aparecem no mapa em tempo real 🎉

---

## 📄 Licença

Projeto pessoal — uso livre para fins não comerciais.

---

## ⚠️ Aviso Legal

Este é um **projeto experimental e educacional**, desenvolvido exclusivamente para fins de aprendizado e uso pessoal entre conhecidos.

- Não possui fins comerciais, lucrativos ou de distribuição pública
- O nome "WherAreU" é apenas um identificador informal para este projeto pessoal, sem qualquer registro de marca ou reivindicação comercial
- Não há relação com nenhuma empresa, produto ou serviço existente com nome similar
- O projeto não coleta, vende ou compartilha dados de terceiros
- Uso por conta e risco próprio — sem garantias de disponibilidade ou precisão

> *"Feito pra aprender, não pra competir."* 😄
