# Companies Directory

This directory contains company-specific blocklists for various corporations available for boycott purposes.

## Current Companies

### 🏰 Disney Corporation
- **Directory**: `disney/`
- **Status**: ✅ Complete
- **Includes**: Disney+, ESPN, ABC, Marvel, Star Wars, Pixar, Hulu, and all Disney-owned properties
- **Domains**: 100+ Disney-specific domains
- **Individual Lists**: 7 property-specific lists available

## Planned Additions

The following companies are planned for future addition:

### 🔵 Meta/Facebook
- **Status**: 📅 Planned
- **Would Include**: Facebook, Instagram, WhatsApp, Threads, Oculus/Meta Quest
- **Rationale**: Social media platforms and data collection

### 🔴 YouTube/Google
- **Status**: 📅 Planned  
- **Would Include**: YouTube, Google Ads, DoubleClick, Google Analytics (company-specific)
- **Rationale**: Video platform monopoly and advertising dominance

### 🛒 Amazon
- **Status**: 📅 Planned
- **Would Include**: Amazon.com, AWS (select services), Prime Video, Twitch
- **Rationale**: E-commerce monopoly and cloud service dominance

### 🟦 Twitter/X
- **Status**: 📅 Planned
- **Would Include**: Twitter.com, X.com, TweetDeck, Twitter APIs
- **Rationale**: Social media platform and content moderation policies

### 📱 TikTok/ByteDance
- **Status**: 📅 Planned
- **Would Include**: TikTok, ByteDance services, Musical.ly legacy domains
- **Rationale**: Social media platform and data privacy concerns

## Adding New Companies

To request a new company be added, please:

1. Open a [feature request issue](https://github.com/preference-funny/comp-LIST-it/issues)
2. Provide the company name and rationale for boycott
3. List known properties/services owned by the company
4. Indicate priority level (high/medium/low)

## Directory Structure

Each company follows this standardized structure:

```
companies/[company-name]/
├── adblock/              # Pi-hole/AdGuard format
├── hosts/                # Hosts file format  
├── domains/              # Plain domain lists
├── dnsmasq/              # DNSMasq configuration
├── wildcard/             # Wildcard format
└── individual/           # Property-specific lists
```

This ensures consistency and compatibility across all company blocklists.