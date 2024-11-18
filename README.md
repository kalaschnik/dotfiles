# dotfiles via chezmoi

## Pre-Install Steps

### Backup

- Thunder Client Settings
  - `rsync -avh --progress ~/Library/Application\ Support/Code/User/globalStorage/rangav.vscode-thunder-client ~/Downloads/`

## Post-Install Steps (macOS)

### Install Apple Developer Tools

```
xcode-select --install
```

**⚠️ Thereafter, go to Settings/General/Software Update and update Command Line Tools for XCode!**

### Screen Resolution

There are cli tools to programmatically get/set screen resolutions (e.g., [displaypacer](https://github.com/jakehilborn/displayplacer)), however, for my preferences this is overkill. Just set it via Settings/Displays.

### Chezmoi Idempotent Install Script

Install [chezmoi](https://www.chezmoi.io), init and apply dotfiles:

```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply kalaschnik
```

This will apply the dotfiles via chezmoi and will run 2 setup scripts in parallel

1. [`run_once_1setup`](run_once_1setup)
   1. Installs [Homebrew](https://brew.sh), if not already installed
   2. Install app from the brewfile [./Brewfile](/Brewfile)
2. [`run_once_2macos`](run_once_2macos)
   1. Asks and sets computer name, host name, and local host name
   2. Asks to set some defaults: https://macos-defaults.com/

### Manual Steps

Note: After chezmoi’s inital installation, you can access `chezmoi` via cli, since it was installed via homebrew. Running `chezmoi apply` will reset the dotfiles to the repo's state.

#### Manual Steps

- [ ] Lunch Applications and sign in and sync settings (e.g., VS Code)
- [ ] Create/Copy over SSH Keys
- [ ] Import Alfred settings
