# Contributing to comp-LIST-it

## Pull Request Process

1. **Fork** this repository to your account
2. **Create** feature branch with descriptive name
3. **Test** your changes thoroughly
4. **Submit** pull request with clear description

### Git Configuration

Use consistent author information:

```bash
git config user.name "ListBot Maintainer"
git config user.email "listbot@example.com"
```

## Quality Standards

### Domain Research
- **Verify ownership** of all domains before adding
- **Document sources** in commit messages
- **Test blocking** with multiple tools
- **Check for false positives** that might break legitimate services

### File Formats
- **Adblock**: Use `||domain.com^` format
- **Hosts**: Use `0.0.0.0 domain.com` format  
- **Dnsmasq**: Use `address=/domain.com/0.0.0.0` format
- **Wildcard**: Use `*.domain.com` format

### Documentation
- **Update README** when adding new companies
- **Include source attribution** where possible
- **Maintain consistent formatting** across all files