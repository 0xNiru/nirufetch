
#!/bin/bash

set -e

echo "📦 Installing nirufetch — Niru's CLI portfolio"

if ! command -v dnf >/dev/null 2>&1; then
    echo "❌ Error: This installer only works on Fedora (DNF-based) systems."
    exit 1
fi

echo "🔧 Adding repo to /etc/yum.repos.d/"
sudo curl -s -o /etc/yum.repos.d/nirufetch.repo https://0xNiru.github.io/nirufetch/nirufetch.repo

echo "🚀 Installing nirufetch..."
sudo dnf install -y nirufetch --disablerepo='*' --enablerepo=nirufetch

echo "🎉 Installed successfully! Type 'nirufetch' to launch the terminal portfolio."
