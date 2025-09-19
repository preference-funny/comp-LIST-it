# � comp-LIST-it - Corporate Boycott Block Lists

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![Last Commit](https://img.shields.io/github/last-commit/preference-funny/comp-LIST-it)](https://github.com/preference-funny/comp-LIST-it/commits/main)
[![GitHub Issues](https://img.shields.io/github/issues/preference-funny/comp-LIST-it)](https://github.com/preference-funny/comp-LIST-it/issues)

## 🎯 Overview

Comprehensive DNS blocklists for **corporate boycotts**. This repository provides curated lists of company-specific domains in multiple formats for use with various DNS filtering solutions like Pi-hole, AdGuard, and others. Block specific corporations while avoiding generic third-party services that could break other websites.

### 🏢 Currently Available Companies
- **🏰 Disney** - Complete Disney ecosystem including streaming, networks, and subsidiaries

### 🔑 Key Features

- **Disney-Focused**: Only includes domains owned or controlled by The Walt Disney Company
- **Multiple Formats**: Compatible with Pi-hole, AdGuard, hosts files, DNSMasq, and more
- **Property-Specific Lists**: Individual lists for Disney+, ESPN, ABC, Marvel, Star Wars, etc.
- **Conservative Approach**: Excludes generic third-party services to avoid breaking non-Disney content
- **Regular Updates**: Maintained and updated as Disney expands its digital properties

### ⚠️ Important Note

These blocklists **only include company-owned domains** and avoid generic third-party services (like Google Analytics, Facebook, Amazon ads, etc.) that companies use but other websites also depend on. This conservative approach ensures you're blocking specific company content without inadvertently breaking other services.

---

## � Repository Structure

```
�📦 comp-LIST-it/
├── 📂 companies/             # Company-specific directories
│   └── 📂 disney/           # Disney Corporation
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

### 🎯 Individual Property Lists

| Service | Description | Link |
|---------|-------------|------|
| **Disney+** | Disney streaming service | [companies/disney/individual/disney-plus.txt](companies/disney/individual/disney-plus.txt) |
| **ESPN** | Sports network and ESPN+ | [companies/disney/individual/espn.txt](companies/disney/individual/espn.txt) |
| **Hulu** | Streaming service | [companies/disney/individual/hulu.txt](companies/disney/individual/hulu.txt) |
| **ABC** | Television network | [companies/disney/individual/abc.txt](companies/disney/individual/abc.txt) |
| **Marvel** | Marvel properties | [companies/disney/individual/marvel.txt](companies/disney/individual/marvel.txt) |
| **Star Wars** | Star Wars properties | [companies/disney/individual/star-wars.txt](companies/disney/individual/star-wars.txt) |
| **Pixar** | Animation studio properties | [companies/disney/individual/pixar.txt](companies/disney/individual/pixar.txt) |

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

### Disney Core Properties
- Disney.com and international variants
- Go.com (Disney's portal)
- Disney+ streaming service
- Disney Analytics and tracking domains

### Streaming Services
- **Disney+**: Main streaming platform and related infrastructure
- **Hulu**: Streaming service (US-focused)
- **ESPN & ESPN+**: Sports streaming and network

### Television Networks
- **ABC**: Television network and news properties
- **Disney Channel**: Kids and family programming
- **FX Networks**: FX, FXX, FXM
- **National Geographic**: Documentary and educational content

### Entertainment Properties
- **Marvel**: Comic and movie properties
- **Star Wars**: Lucasfilm and related properties
- **Pixar**: Animation studio
- **20th Century Studios**: Film studio

### Other Services
- Disney Parks and Resorts
- Disney Music and Records
- Radio Disney
- Disney Shopping and merchandise
- Disney Education and corporate sites

---

## 🎯 What's NOT Included

To avoid breaking non-Disney services, this list **excludes**:

- Generic Google services (Analytics, Tag Manager, AdSense)
- Facebook/Meta tracking pixels
- Amazon advertising services
- Adobe Analytics cloud services
- Generic CDN providers (Akamai, CloudFlare)
- Third-party analytics services (Nielsen, ComScore)

These services are used by Disney but also by countless other websites. Blocking them would break functionality across the web, not just Disney properties.

---

## 📊 Statistics

- **Total Disney-specific domains**: ~100+ domains
- **Individual property lists**: 7 specialized lists
- **Supported formats**: 5 different formats
- **Compatible DNS solutions**: 10+ different platforms

---

## 🤝 Contributing

### Reporting New Domains
Found a Disney domain that should be blocked? Please [open an issue](https://github.com/preference-funny/DIS-Block-List/issues) with:
- The domain name
- Evidence it's Disney-owned (not just used by Disney)
- Which Disney property it relates to

### Reporting False Positives
If a domain is incorrectly blocked and breaks non-Disney services:
- [Open an issue](https://github.com/preference-funny/DIS-Block-List/issues) with details
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