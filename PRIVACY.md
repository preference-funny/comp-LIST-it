# 🔒 Privacy & Anonymity Policy

## Overview

This repository maintains **strict contributor anonymity** to protect individuals who contribute blocking lists for major corporations. All contributions are processed through anonymous accounts to ensure no personal GitHub identities are exposed in the commit history.

## Why Anonymity Matters

Blocking lists for major media corporations can be controversial. Contributors may face:

- Professional retaliation
- Legal pressure from corporations
- Personal harassment
- Employment consequences

This anonymity policy protects contributors while maintaining transparency of the blocking lists themselves.

## How It Works

### 🤖 Anonymous Commits
- All commits are authored by "ListBot Maintainer"
- No personal email addresses or usernames in git history
- Automated systems ensure anonymity is maintained

### 🔄 Pull Request Process
1. Contributors fork and create PRs normally
2. Maintainers review for accuracy and completeness  
3. PRs are merged using anonymous author information
4. Original contributor identity is not preserved in history

### 🛡️ Technical Safeguards
- Git history rewritten to remove personal information
- Pre-commit hooks enforce anonymous identity
- GitHub Actions automate anonymization process
- Branch protection prevents direct personal commits

## For Contributors

### Making Anonymous Contributions

```bash
# Fork the repository and clone your fork
git clone https://github.com/YOUR-USERNAME/comp-LIST-it.git
cd comp-LIST-it

# Set up anonymous identity (optional - handled automatically on merge)
git config user.name "Anonymous Contributor"
git config user.email "anon@example.com"

# Create feature branch
git checkout -b add-new-company

# Make your changes and commit
git add .
git commit -m "Add comprehensive blocking lists for XYZ Corporation"

# Push to your fork and create PR
git push origin add-new-company
```

### What Gets Anonymized
- ✅ Git commit author information
- ✅ Git commit email addresses  
- ✅ Commit timestamps (normalized)
- ❌ Pull request discussions (visible until merged)
- ❌ Fork relationships (temporary)

### Best Practices
- Use a dedicated GitHub account for controversial contributions
- Enable 2FA on all accounts
- Consider using VPN/Tor for enhanced privacy
- Never include personal information in commit messages
- Use throwaway email addresses for git configuration

## For Maintainers

### Repository Setup
```bash
# Clone repository
git clone https://github.com/preference-funny/comp-LIST-it.git
cd comp-LIST-it

# Run anonymity setup script
./scripts/setup-anonymity.sh

# Verify anonymous configuration
git config user.name    # Should be "ListBot Maintainer"
git config user.email   # Should be "listbot@comp-list-it.noreply.github.com"
```

### Merging Pull Requests
1. **Review thoroughly** for accuracy and quality
2. **Use "Squash and merge"** to consolidate commits
3. **Edit commit message** to ensure no personal info
4. **Verify anonymous authorship** before merging
5. **Delete feature branch** after successful merge

### Emergency Procedures
If personal information is accidentally committed:

```bash
# Rewrite history immediately
git filter-branch -f --env-filter '
export GIT_AUTHOR_NAME="ListBot Maintainer"
export GIT_AUTHOR_EMAIL="listbot@comp-list-it.noreply.github.com"
export GIT_COMMITTER_NAME="ListBot Maintainer"  
export GIT_COMMITTER_EMAIL="listbot@comp-list-it.noreply.github.com"
' -- --all

# Force push to remove from GitHub
git push --force origin main
```

## GitHub Repository Settings

### Required Settings
- ✅ **Public repository** (for transparency)
- ✅ **Branch protection** on main branch
- ✅ **Require PR reviews** before merging
- ✅ **Dismiss stale reviews** when new commits are pushed
- ✅ **Require status checks** to pass
- ✅ **Restrict pushes** to maintainers only
- ✅ **Allow squash merging** only

### Privacy Settings
- ✅ **Disable** "Include administrators" for branch protection
- ✅ **Enable** "Delete head branches" automatically
- ✅ **Disable** detailed contributor statistics
- ✅ **Limit** repository visibility settings

## Legal Considerations

### Disclaimer
- This repository provides blocking lists for informational purposes
- Users are responsible for compliance with applicable laws
- Blocking lists are based on publicly available information
- No warranty or guarantee of accuracy is provided

### DMCA & Legal Requests
- All legal communications should be directed to repository maintainers
- Personal contributor information is not available due to anonymization
- Compliance with valid legal requests will be evaluated case-by-case

## Transparency vs. Privacy Balance

### What Remains Transparent
- ✅ Complete blocking list contents
- ✅ Change history and evolution
- ✅ Technical implementation details
- ✅ Usage instructions and documentation

### What Stays Private
- ❌ Individual contributor identities
- ❌ Personal motivations or reasons
- ❌ Geographic locations of contributors
- ❌ Contact information or real names

## Security Notice

⚠️ **Contributors should be aware that:**
- This repository may be monitored by corporate interests
- Use operational security practices when contributing
- Consider using privacy-focused tools and networks
- Maintain separation between this work and professional activities

---

**The goal is comprehensive, accurate blocking lists while maintaining complete contributor anonymity.**

*Last updated: September 19, 2025*