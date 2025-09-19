# � comp-LIST-it - Corporate Boycott Block Lists

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![Last Commit](https://img.shields.io/github/last-commit/prefer## 🔮 Future Companies

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
│   └── 📂 sinclair/         # Sinclair Broadcasting Group
│       ├── 📂 adblock/          # Pi-hole/AdGuard compatible format
│       │   └── disney-complete.txt
│       ├── 📂 hosts/            # Hosts file format
│       │   └── disney-complete.txt
│       ├── 📂 domains/          # Plain domain list
│       │   └── disney-master-list.txt
│       ├── 📂 dnsmasq/          # DNSMasq format
│       │   └── disney-complete.conf
│       ├── 📂 wildcard/         # Wildcard format
│       │   └── disney-complete.txt
│       └── 📂 individual/       # Property-specific lists
│           ├── disney-plus.txt
│           ├── espn.txt
│           ├── abc.txt
│           ├── marvel.txt
│           ├── star-wars.txt
│           ├── pixar.txt
│           └── hulu.txt
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
| **Ring of Honor** | Wrestling promotion | [companies/sinclair/individual/ring-of-honor.txt](companies/sinclair/individual/ring-of-honor.txt) |
| **Stadium** | Sports network | [companies/sinclair/individual/stadium.txt](companies/sinclair/individual/stadium.txt) |

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
- **Streaming & Digital**: Ring of Honor Wrestling, Stadium sports network

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

- **Total companies**: 2 (Disney, Sinclair Broadcasting)
- **Total domains**: 450+ company-specific domains
- **Individual property lists**: 14+ specialized lists
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

## � Future Companies

This repository is designed to expand beyond Disney to include other companies for boycott purposes. Planned additions:

- 🔵 **Meta/Facebook** - Social media platforms and services
- 🔴 **YouTube/Google** - Video platform and advertising network  
- 🛒 **Amazon** - E-commerce and cloud services
- 🟦 **Twitter/X** - Social media platform
- 📱 **TikTok/ByteDance** - Social media and content platform

Each company will have its own directory under `companies/` with the same format structure as Disney.

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