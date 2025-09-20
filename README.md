# � comp-LIST-it - Corporate Boycott Block Lists

This repository is designed to expand to include additional companies based on community interest. Potential additions:

- Additional media conglomerates
- Major streaming platforms  
- Social media companies
- E-commerce platforms
- News and entertainment networks

Each company will have its own directory under `companies/` with the same format structure.

---

## 🎯 Overview

Comprehensive DNS blocklists for **corporate boycotts**. This repository provides curated lists of company-specific domains in multiple formats for use with various DNS filtering solutions like Pi-hole, AdGuard, and others. Block specific corporations while avoiding generic third-party services that could break other websites.

### 🏢 Currently Available Companies
- **🏰 Disney** - Complete Disney ecosystem including streaming, networks, and subsidiaries
- **📺 Sinclair Broadcasting** - TV stations, Tennis Channel, and multicast networks
- **🎯 Nexstar Media Group** - Largest TV station owner, The CW Network, NewsNation, The Hill
- **📰 Low-Credibility Media** - News outlets with disputed credibility ratings (Newsmax, OAN, Daily Wire, The Blaze, etc.)
- **🦊 Murdoch Media Empire** - News Corp and Fox Corporation (Fox News, WSJ, NY Post, The Times UK, etc.)

### 🔑 Key Features

- **Company-Specific**: Only includes domains owned or controlled by target corporations
- **Multiple Formats**: Compatible with Pi-hole, AdGuard, hosts files, DNSMasq, and more
- **Property-Specific Lists**: Individual lists for streaming services, networks, subsidiaries, etc.
- **Conservative Approach**: Excludes generic third-party services to avoid breaking other content
- **Regular Updates**: Maintained and updated as companies expand their digital properties

### ⚠️ Important Note

These blocklists **only include company-owned domains** and avoid generic third-party services (like Google Analytics, Facebook, Amazon ads, etc.) that companies use but other websites also depend on. This conservative approach ensures you're blocking specific company content without inadvertently breaking other services.

---

## � Repository Structure

```
📦 comp-LIST-it/
├── 📂 companies/             # Company-specific directories
│   ├── 📂 disney/           # Disney Corporation
│   │   ├── 📂 adblock/          # Pi-hole/AdGuard compatible format
│   │   ├── 📂 hosts/            # Hosts file format
│   │   ├── 📂 domains/          # Plain domain list
│   │   ├── 📂 dnsmasq/          # DNSMasq format
│   │   ├── 📂 wildcard/         # Wildcard format
│   │   └── 📂 individual/       # Property-specific lists
│   ├── 📂 sinclair/         # Sinclair Broadcasting Group
│   │   ├── 📂 adblock/          # Pi-hole/AdGuard compatible format
│   │   ├── 📂 hosts/            # Hosts file format
│   │   ├── 📂 domains/          # Plain domain list
│   │   ├── 📂 dnsmasq/          # DNSMasq format
│   │   ├── 📂 wildcard/         # Wildcard format
│   │   └── 📂 individual/       # Property-specific lists
│   ├── 📂 nexstar/          # Nexstar Media Group
│   │   ├── 📂 adblock/          # Pi-hole/AdGuard compatible format
│   │   ├── 📂 hosts/            # Hosts file format
│   │   ├── 📂 domains/          # Plain domain list
│   │   ├── 📂 dnsmasq/          # DNSMasq format
│   │   ├── 📂 wildcard/         # Wildcard format
│   │   └── 📂 individual/       # Property-specific lists
│   │       ├── cw-network.txt
│   │       ├── newsnation.txt
│   │       ├── the-hill.txt
│   │       ├── wgn-america.txt
│   │       └── major-local-stations.txt
│   ├── 📂 low-credibility-media/ # Low-Credibility Media Networks
│   │   ├── 📂 adblock/          # Pi-hole/AdGuard compatible format
│   │   ├── 📂 hosts/            # Hosts file format
│   │   ├── 📂 domains/          # Plain domain list
│   │   ├── 📂 dnsmasq/          # DNSMasq format
│   │   ├── 📂 wildcard/         # Wildcard format
│   │   └── 📂 individual/       # Network-specific lists
│   │       ├── newsmax.txt
│   │       ├── oan.txt
│   │       ├── daily-wire.txt
│   │       ├── the-blaze.txt
│   │       ├── salem-media.txt
│   │       ├── infowars.txt
│   │       ├── breitbart.txt
│   │       ├── epoch-times.txt
│   │       └── gateway-pundit.txt
│   └── 📂 murdoch/             # Murdoch Media Empire
│       ├── 📂 adblock/          # Pi-hole/AdGuard compatible format
│       ├── 📂 hosts/            # Hosts file format
│       ├── 📂 domains/          # Plain domain list
│       ├── 📂 dnsmasq/          # DNSMasq format
│       ├── 📂 wildcard/         # Wildcard format
│       └── 📂 individual/       # Property-specific lists
│           ├── fox-news.txt
│           ├── fox-business.txt
│           ├── wall-street-journal.txt
│           ├── new-york-post.txt
│           ├── the-times-uk.txt
│           ├── the-sun-uk.txt
│           ├── fox-sports.txt
│           ├── fox-broadcasting.txt
│           ├── tubi.txt
│           └── harpercollins.txt
└── 📂 .github/workflows/        # Auto-update automation
```

---

## 📦 Available Lists

### 🎬 Disney Corporation Block Lists
Comprehensive lists covering all Disney properties and services.

| Format | Description | Compatible With | Link |
|--------|-------------|-----------------|------|
| **AdBlock** | Pi-hole, AdGuard format | Pi-hole, AdGuard Home, uBlock Origin | [companies/disney/adblock/disney-complete.txt](companies/disney/adblock/disney-complete.txt) |
| **Hosts** | Traditional hosts format | Linux, Mac, Windows | [companies/disney/hosts/disney-complete.txt](companies/disney/hosts/disney-complete.txt) |
| **Domains** | Plain domain list | Custom implementations | [companies/disney/domains/disney-master-list.txt](companies/disney/domains/disney-master-list.txt) |
| **DNSMasq** | DNSMasq configuration | DNSMasq servers | [companies/disney/dnsmasq/disney-complete.conf](companies/disney/dnsmasq/disney-complete.conf) |
| **Wildcard** | Wildcard domain format | pfSense, OPNsense | [companies/disney/wildcard/disney-complete.txt](companies/disney/wildcard/disney-complete.txt) |

### 📺 Sinclair Broadcasting Group Block Lists
Comprehensive lists covering all Sinclair Broadcasting Group properties and services.

| Format | Description | Compatible With | Link |
|--------|-------------|-----------------|------|
| **AdBlock** | Pi-hole, AdGuard format | Pi-hole, AdGuard Home, uBlock Origin | [companies/sinclair/adblock/sinclair-complete.txt](companies/sinclair/adblock/sinclair-complete.txt) |
| **Hosts** | Traditional hosts format | Linux, Mac, Windows | [companies/sinclair/hosts/sinclair-complete.txt](companies/sinclair/hosts/sinclair-complete.txt) |
| **Domains** | Plain domain list | Custom implementations | [companies/sinclair/domains/sinclair-master-list.txt](companies/sinclair/domains/sinclair-master-list.txt) |
| **DNSMasq** | DNSMasq configuration | DNSMasq servers | [companies/sinclair/dnsmasq/sinclair-complete.conf](companies/sinclair/dnsmasq/sinclair-complete.conf) |
| **Wildcard** | Wildcard domain format | pfSense, OPNsense | [companies/sinclair/wildcard/sinclair-complete.txt](companies/sinclair/wildcard/sinclair-complete.txt) |

### 🎯 Nexstar Media Group Block Lists
Comprehensive lists covering all Nexstar Media Group properties and services.

| Format | Description | Compatible With | Link |
|--------|-------------|-----------------|------|
| **AdBlock** | Pi-hole, AdGuard format | Pi-hole, AdGuard Home, uBlock Origin | [companies/nexstar/adblock/nexstar-complete.txt](companies/nexstar/adblock/nexstar-complete.txt) |
| **Hosts** | Traditional hosts format | Linux, Mac, Windows | [companies/nexstar/hosts/nexstar-complete.txt](companies/nexstar/hosts/nexstar-complete.txt) |
| **Domains** | Plain domain list | Custom implementations | [companies/nexstar/domains/nexstar-master-list.txt](companies/nexstar/domains/nexstar-master-list.txt) |
| **DNSMasq** | DNSMasq configuration | DNSMasq servers | [companies/nexstar/dnsmasq/nexstar-complete.conf](companies/nexstar/dnsmasq/nexstar-complete.conf) |
| **Wildcard** | Wildcard domain format | pfSense, OPNsense | [companies/nexstar/wildcard/nexstar-complete.txt](companies/nexstar/wildcard/nexstar-complete.txt) |

### 📰 Low-Credibility Media Block Lists
Comprehensive lists covering news outlets with disputed credibility ratings from media bias assessments.

| Format | Description | Compatible With | Link |
|--------|-------------|-----------------|------|
| **AdBlock** | Pi-hole, AdGuard format | Pi-hole, AdGuard Home, uBlock Origin | [companies/low-credibility-media/adblock/low-credibility-media-complete.txt](companies/low-credibility-media/adblock/low-credibility-media-complete.txt) |
| **Hosts** | Traditional hosts format | Linux, Mac, Windows | [companies/low-credibility-media/hosts/low-credibility-media-complete.txt](companies/low-credibility-media/hosts/low-credibility-media-complete.txt) |
| **Domains** | Plain domain list | Custom implementations | [companies/low-credibility-media/domains/low-credibility-media-master-list.txt](companies/low-credibility-media/domains/low-credibility-media-master-list.txt) |
| **DNSMasq** | DNSMasq configuration | DNSMasq servers | [companies/low-credibility-media/dnsmasq/low-credibility-media-complete.conf](companies/low-credibility-media/dnsmasq/low-credibility-media-complete.conf) |
| **Wildcard** | Wildcard domain format | pfSense, OPNsense | [companies/low-credibility-media/wildcard/low-credibility-media-complete.txt](companies/low-credibility-media/wildcard/low-credibility-media-complete.txt) |

### 🦊 Murdoch Media Empire Block Lists
Comprehensive lists covering News Corp and Fox Corporation properties under Murdoch family control.

| Format | Description | Compatible With | Link |
|--------|-------------|-----------------|------|
| **AdBlock** | Pi-hole, AdGuard format | Pi-hole, AdGuard Home, uBlock Origin | [companies/murdoch/adblock/murdoch-complete.txt](companies/murdoch/adblock/murdoch-complete.txt) |
| **Hosts** | Traditional hosts format | Linux, Mac, Windows | [companies/murdoch/hosts/murdoch-complete.txt](companies/murdoch/hosts/murdoch-complete.txt) |
| **Domains** | Plain domain list | Custom implementations | [companies/murdoch/domains/murdoch-master-list.txt](companies/murdoch/domains/murdoch-master-list.txt) |
| **DNSMasq** | DNSMasq configuration | DNSMasq servers | [companies/murdoch/dnsmasq/murdoch-complete.conf](companies/murdoch/dnsmasq/murdoch-complete.conf) |
| **Wildcard** | Wildcard domain format | pfSense, OPNsense | [companies/murdoch/wildcard/murdoch-complete.txt](companies/murdoch/wildcard/murdoch-complete.txt) |

### 🎯 Individual Property Lists

#### Disney Properties
| Service | Description | Link |
|---------|-------------|------|
| **Disney+** | Disney streaming service | [companies/disney/individual/disneyplus.txt](companies/disney/individual/disneyplus.txt) |
| **ESPN** | Sports network and ESPN+ | [companies/disney/individual/espn.txt](companies/disney/individual/espn.txt) |
| **Hulu** | Streaming service | [companies/disney/individual/hulu.txt](companies/disney/individual/hulu.txt) |
| **ABC** | Television network | [companies/disney/individual/abc.txt](companies/disney/individual/abc.txt) |
| **Marvel** | Marvel properties | [companies/disney/individual/marvel.txt](companies/disney/individual/marvel.txt) |
| **Star Wars** | Star Wars properties | [companies/disney/individual/starwars.txt](companies/disney/individual/starwars.txt) |
| **Disney Analytics** | Disney tracking domains | [companies/disney/individual/disney-analytics.txt](companies/disney/individual/disney-analytics.txt) |

#### Sinclair Broadcasting Properties
| Service | Description | Link |
|---------|-------------|------|
| **Tennis Channel** | Sports network | [companies/sinclair/individual/tennis-channel.txt](companies/sinclair/individual/tennis-channel.txt) |
| **Comet TV** | Multicast network | [companies/sinclair/individual/comet-tv.txt](companies/sinclair/individual/comet-tv.txt) |
| **Charge!** | Multicast network | [companies/sinclair/individual/charge.txt](companies/sinclair/individual/charge.txt) |
| **TBD Network** | Multicast network | [companies/sinclair/individual/tbd.txt](companies/sinclair/individual/tbd.txt) |
| **The Nest** | Multicast network | [companies/sinclair/individual/nest.txt](companies/sinclair/individual/nest.txt) |
| **Stadium** | Sports network | [companies/sinclair/individual/stadium.txt](companies/sinclair/individual/stadium.txt) |

#### Nexstar Media Group Properties
| Service | Description | Link |
|---------|-------------|------|
| **The CW Network** | Broadcast TV network | [companies/nexstar/individual/cw-network.txt](companies/nexstar/individual/cw-network.txt) |
| **NewsNation** | Cable news network | [companies/nexstar/individual/newsnation.txt](companies/nexstar/individual/newsnation.txt) |
| **The Hill** | Political news publication | [companies/nexstar/individual/the-hill.txt](companies/nexstar/individual/the-hill.txt) |
| **WGN America** | Cable network and WGN Chicago | [companies/nexstar/individual/wgn-america.txt](companies/nexstar/individual/wgn-america.txt) |
| **Major Local Stations** | Top market TV stations | [companies/nexstar/individual/major-local-stations.txt](companies/nexstar/individual/major-local-stations.txt) |

#### Low-Credibility Media Networks
| Service | Description | Link |
|---------|-------------|------|
| **Newsmax** | Cable news network | [companies/low-credibility-media/individual/newsmax.txt](companies/low-credibility-media/individual/newsmax.txt) |
| **One America News (OAN)** | Cable news network | [companies/low-credibility-media/individual/oan.txt](companies/low-credibility-media/individual/oan.txt) |
| **Daily Wire** | Media company and podcast network | [companies/low-credibility-media/individual/daily-wire.txt](companies/low-credibility-media/individual/daily-wire.txt) |
| **The Blaze** | Media company and streaming network | [companies/low-credibility-media/individual/the-blaze.txt](companies/low-credibility-media/individual/the-blaze.txt) |
| **Salem Media Group** | Radio and digital media empire | [companies/low-credibility-media/individual/salem-media.txt](companies/low-credibility-media/individual/salem-media.txt) |
| **InfoWars** | Conspiracy theory and supplement network | [companies/low-credibility-media/individual/infowars.txt](companies/low-credibility-media/individual/infowars.txt) |
| **Breitbart News** | Political news and opinion website | [companies/low-credibility-media/individual/breitbart.txt](companies/low-credibility-media/individual/breitbart.txt) |
| **The Epoch Times** | Multi-language news organization | [companies/low-credibility-media/individual/epoch-times.txt](companies/low-credibility-media/individual/epoch-times.txt) |
| **The Gateway Pundit** | Political blog and news website | [companies/low-credibility-media/individual/gateway-pundit.txt](companies/low-credibility-media/individual/gateway-pundit.txt) |

#### Murdoch Media Empire Properties
| Service | Description | Link |
|---------|-------------|------|
| **Fox News Channel** | Cable news network | [companies/murdoch/individual/fox-news.txt](companies/murdoch/individual/fox-news.txt) |
| **Fox Business Network** | Business and financial news network | [companies/murdoch/individual/fox-business.txt](companies/murdoch/individual/fox-business.txt) |
| **Wall Street Journal** | Financial newspaper (includes Barron's, MarketWatch) | [companies/murdoch/individual/wall-street-journal.txt](companies/murdoch/individual/wall-street-journal.txt) |
| **New York Post** | Tabloid newspaper (includes Page Six) | [companies/murdoch/individual/new-york-post.txt](companies/murdoch/individual/new-york-post.txt) |
| **The Times (UK)** | British newspaper (includes Sunday Times) | [companies/murdoch/individual/the-times-uk.txt](companies/murdoch/individual/the-times-uk.txt) |
| **The Sun (UK)** | British tabloid newspaper | [companies/murdoch/individual/the-sun-uk.txt](companies/murdoch/individual/the-sun-uk.txt) |
| **Fox Sports** | Sports networks and digital properties | [companies/murdoch/individual/fox-sports.txt](companies/murdoch/individual/fox-sports.txt) |
| **Fox Broadcasting Company** | Broadcast television network | [companies/murdoch/individual/fox-broadcasting.txt](companies/murdoch/individual/fox-broadcasting.txt) |
| **Tubi** | Free streaming service | [companies/murdoch/individual/tubi.txt](companies/murdoch/individual/tubi.txt) |
| **HarperCollins Publishers** | Book publishing company | [companies/murdoch/individual/harpercollins.txt](companies/murdoch/individual/harpercollins.txt) |

---

## 🚀 Quick Start

### Pi-hole Setup
```bash
# Add to Pi-hole via web interface or command line
pihole -a adlist add https://raw.githubusercontent.com/preference-funny/comp-LIST-it/main/companies/disney/adblock/disney-complete.txt
pihole -g
```

### AdGuard Home Setup
1. Go to **Filters** → **DNS blocklists**
2. Click **Add blocklist**
3. Add URL: `https://raw.githubusercontent.com/preference-funny/comp-LIST-it/main/companies/disney/adblock/disney-complete.txt`
4. Name: `Disney Complete Block List`

### Hosts File (Linux/Mac)
```bash
# Download and append to hosts file
curl -s https://raw.githubusercontent.com/preference-funny/comp-LIST-it/main/companies/disney/hosts/disney-complete.txt >> /etc/hosts
```

### Hosts File (Windows)
1. Download: [companies/disney/hosts/disney-complete.txt](companies/disney/hosts/disney-complete.txt)
2. Open `C:\Windows\System32\drivers\etc\hosts` as Administrator
3. Append the contents to your hosts file

### DNSMasq Setup
```bash
# Download configuration file
wget https://raw.githubusercontent.com/preference-funny/comp-LIST-it/main/companies/disney/dnsmasq/disney-complete.conf -O /etc/dnsmasq.d/disney-block.conf
systemctl restart dnsmasq
```

---

## 🏢 What's Included

### 🎬 Disney Corporation
- **Core Properties**: Disney.com, Go.com, Disney+ streaming service
- **Streaming Services**: Disney+, Hulu, ESPN & ESPN+
- **Television Networks**: ABC, Disney Channel, FX Networks, National Geographic
- **Entertainment Properties**: Marvel, Star Wars, Pixar, 20th Century Studios
- **Other Services**: Disney Parks, Disney Music, Radio Disney, shopping and corporate sites

### 📺 Sinclair Broadcasting Group
- **Corporate Properties**: Sinclair corporate domains and analytics
- **Tennis Channel**: Sports network and streaming properties  
- **Multicast Networks**: Comet, Charge!, TBD, and The Nest networks
- **Local TV Stations**: 350+ local television station websites across the US
- **Streaming & Digital**: Stadium sports network

### 🎯 Nexstar Media Group
- **Corporate Properties**: Nexstar corporate domains and digital platforms
- **The CW Network**: Broadcast television network (75% ownership)
- **NewsNation**: Cable news network and streaming service
- **The Hill**: Political news website and Hill.TV
- **WGN Properties**: WGN America cable network and WGN Chicago
- **Local TV Stations**: 200+ local television stations in major US markets

### 📰 Low-Credibility Media Networks
- **Cable Networks**: Newsmax, One America News (OAN)
- **Digital Media Companies**: Daily Wire, The Blaze, Salem Media Group
- **Alternative Media Outlets**: InfoWars, Breitbart News, The Gateway Pundit
- **International Operations**: The Epoch Times multi-language organization
- **Podcast Networks**: Multiple shows across Daily Wire, The Blaze, and Salem platforms
- **Total Domains**: 300+ domains covering news outlets with disputed credibility ratings

### 🦊 Murdoch Media Empire
- **News Corp Holdings**: Wall Street Journal, New York Post, The Times (UK), The Sun, HarperCollins Publishers
- **Fox Corporation Holdings**: Fox News Channel, Fox Business Network, Fox Broadcasting Company, Fox Sports, Tubi
- **International Properties**: Sky News Australia, The Australian, various local newspapers
- **Digital Platforms**: Streaming services, mobile apps, subscription services
- **Publishing Empire**: HarperCollins with multiple imprints and international operations
- **Total Domains**: 150+ domains covering the complete Murdoch family media empire

---

## 🎯 What's NOT Included

To avoid breaking unrelated services, these lists **exclude**:

- Generic Google services (Analytics, Tag Manager, AdSense)
- Facebook/Meta tracking pixels
- Amazon advertising services
- Adobe Analytics cloud services
- Generic CDN providers (Akamai, CloudFlare)
- Third-party analytics services (Nielsen, ComScore)

These services are used by target companies but also by countless other websites. Blocking them would break functionality across the web, not just the intended company properties.

---

## 📊 Statistics

- **Total companies**: 3 (Disney, Sinclair Broadcasting, Nexstar Media Group)
- **Total domains**: 850+ company-specific domains
- **Individual property lists**: 19+ specialized lists
- **Supported formats**: 5 different formats
- **Compatible DNS solutions**: 10+ different platforms

---

## 🤝 Contributing

### Reporting New Domains
Found a company domain that should be blocked? Please [open an issue](https://github.com/preference-funny/comp-LIST-it/issues) with:
- The domain name
- Evidence it's company-owned (not just used by the company)
- Which company property it relates to

### Reporting False Positives
If a domain is incorrectly blocked and breaks unrelated services:
- [Open an issue](https://github.com/preference-funny/comp-LIST-it/issues) with details
- Include which service is broken
- We prioritize fixing false positives quickly

---

## 📋 Compatibility

### DNS Filtering Solutions

| Solution | Compatible Formats | Tested |
|----------|-------------------|--------|
| **Pi-hole** | AdBlock, Hosts, Domains | ✅ |
| **AdGuard Home** | AdBlock, Hosts, Domains | ✅ |
| **AdGuard** | AdBlock | ✅ |
| **uBlock Origin** | AdBlock | ✅ |
| **Blocky** | Domains, Wildcard | ✅ |
| **DNSMasq** | DNSMasq | ✅ |
| **OPNsense** | Wildcard, Domains | ✅ |
| **pfBlockerNG** | Domains, Hosts | ✅ |
| **Hosts file** | Hosts | ✅ |

---

## �🔄 Updates

This repository is updated regularly to include:
- New company acquisitions and properties
- New domains discovered through research
- Removal of domains no longer owned by companies
- User-reported additions and corrections
- New company additions based on user requests

### Update Frequency
- **Minor updates**: Weekly (new domains, corrections)
- **Major updates**: Monthly (new companies, properties, restructuring)

---

## 📄 License

This project is licensed under the **GNU General Public License v3.0** - see the [LICENSE](LICENSE) file for details.

---

## 🙏 Acknowledgments

- Inspired by [hagezi's dns-blocklists](https://github.com/hagezi/dns-blocklists) project structure
- Community contributions and domain reports
- Various Disney property research and analysis

---

## 📞 Support

- 🐛 **Bug Reports**: [GitHub Issues](https://github.com/preference-funny/comp-LIST-it/issues)
- 💡 **Feature Requests**: [GitHub Issues](https://github.com/preference-funny/comp-LIST-it/issues)
- 📖 **Documentation**: This README and individual file headers
- 💬 **Discussions**: [GitHub Discussions](https://github.com/preference-funny/comp-LIST-it/discussions)

---

## ⭐ Show Your Support

If this project helps you block Disney content effectively, please consider:
- ⭐ Starring this repository
- 🍴 Forking for your own customizations
- 🐛 Reporting issues and new domains
- 💡 Contributing improvements

---

**Made with � for privacy-conscious users who want granular control over corporate content blocking.**