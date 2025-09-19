#!/bin/bash

# Anonymity Setup Script for comp-LIST-it Repository
# This script helps maintain contributor anonymity

set -e

echo "🔒 Setting up anonymous contribution environment..."

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${GREEN}✓${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}⚠${NC} $1"
}

print_error() {
    echo -e "${RED}✗${NC} $1"
}

print_info() {
    echo -e "${BLUE}ℹ${NC} $1"
}

# Check if we're in the correct repository
if [[ ! -d ".git" ]]; then
    print_error "This script must be run from the root of a git repository"
    exit 1
fi

if [[ ! -f "companies/disney/README.md" ]] && [[ ! -f "companies/sinclair/README.md" ]]; then
    print_error "This doesn't appear to be the comp-LIST-it repository"
    exit 1
fi

print_info "Setting up anonymous git identity for this repository..."

# Set anonymous git identity for this repository only
git config user.name "ListBot Maintainer"
git config user.email "listbot@comp-list-it.noreply.github.com"

print_status "Anonymous git identity configured"

# Display current configuration
echo
print_info "Current git configuration for this repository:"
echo "  Name: $(git config user.name)"
echo "  Email: $(git config user.email)"
echo

# Check if there are any commits with personal information
echo "🔍 Checking commit history for personal information..."

# Get unique author emails from commit history
PERSONAL_EMAILS=$(git log --pretty=format:"%ae" | grep -v "listbot@comp-list-it.noreply.github.com" | sort -u)

if [[ -n "$PERSONAL_EMAILS" ]]; then
    print_warning "Found commits with personal email addresses:"
    echo "$PERSONAL_EMAILS" | sed 's/^/    /'
    echo
    
    read -p "Do you want to rewrite git history to anonymize these commits? (y/N): " -n 1 -r
    echo
    
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        print_info "Rewriting git history to anonymize all commits..."
        
        # Backup current branch
        CURRENT_BRANCH=$(git branch --show-current)
        git branch backup-before-anonymization
        
        # Rewrite history
        git filter-branch -f --env-filter '
        export GIT_AUTHOR_NAME="ListBot Maintainer"
        export GIT_AUTHOR_EMAIL="listbot@comp-list-it.noreply.github.com"  
        export GIT_COMMITTER_NAME="ListBot Maintainer"
        export GIT_COMMITTER_EMAIL="listbot@comp-list-it.noreply.github.com"
        ' -- --all
        
        print_status "Git history anonymized"
        print_info "Backup branch 'backup-before-anonymization' created"
        
        read -p "Do you want to force push the anonymized history to GitHub? (y/N): " -n 1 -r
        echo
        
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            print_info "Force pushing anonymized history..."
            git push --force origin $CURRENT_BRANCH
            print_status "Anonymized history pushed to GitHub"
        else
            print_warning "History rewritten locally but not pushed to GitHub"
            print_info "Run 'git push --force origin $CURRENT_BRANCH' when ready"
        fi
    fi
else
    print_status "No personal information found in commit history"
fi

echo
print_info "🛡️  Privacy Protection Checklist:"
echo "  • Anonymous git identity configured ✓"
echo "  • All commits will use anonymous author information ✓"
echo "  • Never commit personally identifiable information"
echo "  • Use Pull Requests for all changes"
echo "  • Enable 2FA on your GitHub account"
echo "  • Consider using a VPN when contributing"

echo
print_info "📝 Next Steps:"
echo "  1. Configure GitHub repository settings:"
echo "     - Enable branch protection for main branch"
echo "     - Require pull request reviews"  
echo "     - Disable force pushes (except for maintainers)"
echo "  2. Only merge PRs through the anonymous maintainer account"
echo "  3. Use 'Squash and merge' to consolidate commits"
echo "  4. Always verify commit author before pushing"

echo
print_status "Anonymous contribution environment setup complete!"

# Create a reminder file
cat > .git/hooks/pre-commit << 'EOF'
#!/bin/bash
# Pre-commit hook to ensure anonymous identity

AUTHOR_EMAIL=$(git config user.email)
if [[ "$AUTHOR_EMAIL" != "listbot@comp-list-it.noreply.github.com" ]]; then
    echo "❌ Error: Anonymous git identity not configured!"
    echo "Run: git config user.email 'listbot@comp-list-it.noreply.github.com'"
    echo "Run: git config user.name 'ListBot Maintainer'"
    exit 1
fi
EOF

chmod +x .git/hooks/pre-commit
print_status "Pre-commit hook installed to enforce anonymous identity"

echo
echo "🔐 Repository is now configured for anonymous contributions!"