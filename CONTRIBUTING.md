# Contributing Guidelines

## Privacy & Anonymity Policy

This repository maintains **strict contributor anonymity** to protect individuals who contribute to blocking lists for large corporations. All contributions are processed through an anonymous maintainer account to ensure no personal GitHub identities are exposed.

## How to Contribute

### For External Contributors

1. **Fork the repository** to your personal account
2. **Create a feature branch** for your changes
3. **Submit a Pull Request** with detailed description
4. **DO NOT** commit directly to main branch
5. All PRs will be reviewed and merged by the anonymous maintainer account

### For Maintainers

#### Git Configuration
Always ensure anonymous identity is configured for this repository:

```bash
# Set anonymous identity for this repo only
git config user.name "ListBot Maintainer"  
git config user.email "listbot@comp-list-it.noreply.github.com"

# Verify configuration
git config user.name
git config user.email
```

#### Merging Pull Requests
1. Review PR thoroughly for accuracy and completeness
2. Use GitHub's "Squash and merge" option
3. Edit commit message to maintain anonymous authorship
4. Delete feature branches after merging

#### Adding New Companies
When adding new companies:
1. Research domains thoroughly
2. Create complete directory structure matching existing format
3. Include comprehensive README with company information
4. Test all blocking formats for syntax correctness

## Repository Structure

```
companies/
├── [company-name]/
│   ├── README.md                    # Company overview and documentation
│   ├── adblock/                     # uBlock Origin/AdGuard format
│   │   └── [company]-complete.txt
│   ├── dnsmasq/                     # dnsmasq DNS server format  
│   │   └── [company]-complete.conf
│   ├── domains/                     # Plain domain lists
│   │   ├── [company]-master-list.txt
│   │   └── [company]-complete.txt
│   ├── hosts/                       # System hosts file format
│   │   └── [company]-complete.txt  
│   ├── individual/                  # Categorized by service type
│   │   ├── [company]-corporate.txt
│   │   ├── [company]-analytics.txt
│   │   └── [service-specific].txt
│   └── wildcard/                    # Wildcard subdomain blocking
│       └── [company]-complete.txt
```

## Quality Standards

### Domain Research
- Use only official company sources, press releases, and SEC filings
- Verify domain ownership through WHOIS lookups
- Include comprehensive subdomain mapping
- Document analytics and tracking domains thoroughly

### File Formatting
- **Adblock format**: `||domain.com^`
- **Dnsmasq format**: `address=/domain.com/0.0.0.0`
- **Hosts format**: `0.0.0.0 domain.com`
- **Wildcard format**: `*.domain.com`
- **Plain domains**: One domain per line, no formatting

### Documentation
- Each company directory must include comprehensive README
- Document company structure, subsidiaries, and services
- Include usage examples for each format
- Provide coverage statistics

## Testing Guidelines

Before submitting:
1. Validate syntax for all file formats
2. Test with actual blocking software when possible
3. Verify no false positives on legitimate services
4. Ensure comprehensive coverage of company properties

## Prohibited Content

- Personal attacks or inflammatory language
- Inaccurate or unverified domain information  
- Copyright violations
- Domains not directly owned by target companies

## Branch Protection

This repository uses branch protection rules:
- All changes must go through Pull Request process
- Direct pushes to main branch are prohibited
- Only maintainer account can merge PRs
- All commits must be signed

## Security Notice

Contributors should be aware that:
- This repository may be controversial due to corporate blocking focus
- Maintain operational security practices
- Use privacy-focused tools and VPNs when contributing
- Never include personal information in commits or PRs

---

**Remember: The goal is comprehensive, accurate blocking lists while maintaining complete contributor anonymity.**