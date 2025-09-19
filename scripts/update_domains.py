#!/usr/bin/env python3
"""
Disney Block List Domain Discovery and Update Script
Helps maintain and update the Disney domain lists
"""

import requests
import json
import re
from datetime import datetime
from pathlib import Path

# Base directory
BASE_DIR = Path(__file__).parent.parent

def load_current_domains():
    """Load current domains from master list"""
    master_file = BASE_DIR / "companies" / "disney" / "domains" / "disney-master-list.txt"
    domains = set()
    
    if master_file.exists():
        with open(master_file, 'r') as f:
            for line in f:
                line = line.strip()
                if line and not line.startswith('#'):
                    domains.add(line)
    
    return domains

def is_disney_domain(domain):
    """Check if a domain is likely Disney-owned based on name patterns"""
    disney_patterns = [
        r'disney',
        r'marvel',
        r'starwars',
        r'pixar',
        r'espn',
        r'abc\.com',
        r'hulu',
        r'nationalgeographic',
        r'natgeo',
        r'lucasfilm',
        r'touchstone',
        r'hollywood.*records',
        r'babyeinstein',
        r'go\.com'
    ]
    
    domain_lower = domain.lower()
    for pattern in disney_patterns:
        if re.search(pattern, domain_lower):
            return True
    return False

def generate_format_files():
    """Generate all format files from master domain list"""
    print("Generating format files...")
    
    domains = load_current_domains()
    if not domains:
        print("No domains found in master list")
        return
    
    # AdBlock format
    adblock_file = BASE_DIR / "companies" / "disney" / "adblock" / "disney-complete.txt"
    with open(adblock_file, 'w') as f:
        f.write("""! Title: Disney Complete Block List
! Description: Comprehensive blocklist for Disney-owned properties (Disney-specific domains only)
! Homepage: https://github.com/preference-funny/comp-LIST-it
! License: GPL-3.0
! Version: 1.0.0
! Last Modified: {}
! Entries: {} Disney-specific domains
! Compatible with: Pi-hole, AdGuard, AdGuard Home, uBlock Origin, etc.
! NOTE: Only includes Disney-owned domains, not generic third-party services
!
""".format(datetime.now().strftime("%B %d, %Y"), len(domains)))
        
        for domain in sorted(domains):
            f.write(f"||{domain}^\n")
    
    # Hosts format
    hosts_file = BASE_DIR / "companies" / "disney" / "hosts" / "disney-complete.txt"
    with open(hosts_file, 'w') as f:
        f.write("""# Disney Complete Block List - Hosts Format
# Comprehensive blocklist for Disney-owned properties (Disney-specific domains only)
# Homepage: https://github.com/preference-funny/comp-LIST-it
# License: GPL-3.0
# Version: 1.0.0
# Last Modified: {}
# Entries: {} Disney-specific domains
# Compatible with: AdAway, uMatrix, DNS66, NetGuard, hosts file
#
# Usage: Add these entries to your hosts file (/etc/hosts on Linux/Mac, C:\\Windows\\System32\\drivers\\etc\\hosts on Windows)
# Or use with applications that support hosts file format
# NOTE: Only includes Disney-owned domains, not generic third-party services

""".format(datetime.now().strftime("%B %d, %Y"), len(domains)))
        
        for domain in sorted(domains):
            f.write(f"0.0.0.0 {domain}\n")
    
    # Domains format
    domains_file = BASE_DIR / "companies" / "disney" / "domains" / "disney-complete.txt"
    with open(domains_file, 'w') as f:
        f.write("""# Disney Complete Block List - Domains Format
# Comprehensive blocklist for Disney-owned properties (Disney-specific domains only)
# Homepage: https://github.com/preference-funny/comp-LIST-it
# License: GPL-3.0
# Version: 1.0.0
# Last Modified: {}
# Entries: {} Disney-specific domains
# Compatible with: Blocky, Diversion, OpenSnitch, PersonalBlocklist, pfBlockerNG
# NOTE: Only includes Disney-owned domains, not generic third-party services
#
""".format(datetime.now().strftime("%B %d, %Y"), len(domains)))
        
        for domain in sorted(domains):
            f.write(f"{domain}\n")
    
    print(f"Generated format files with {len(domains)} domains")

def main():
    """Main update function"""
    print("Disney Block List Update Script")
    print("=" * 50)
    
    # Load current domains
    current_domains = load_current_domains()
    print(f"Current domains: {len(current_domains)}")
    
    # For now, just regenerate format files
    # In the future, this could include domain discovery logic
    generate_format_files()
    
    print("Update complete!")

if __name__ == "__main__":
    main()