# dotfiles via chezmoi

## Post install steps

### Install Apple Developer Tools

```
xcode-select --install
```

**After that go to Settings/General/Software Update and update Command Line Tools for XCode**

### Screen Resolution

There are cli tools to programmatically get/set screen resolutions (e.g., [displaypacer](https://github.com/jakehilborn/displayplacer)), however, for my preferences this is overkill. Just set it via Settings/Displays.

### Chezmoi Idempotent Install Script

- Install [chezmoi](https://www.chezmoi.io), init and apply dotfiles:

```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply kalaschnik
```

This will run a setup script in parallel (see [./run_setup](/run_setup)), which does the following things:

- Checking if a Brewfile was found
- Install [Homebrew](https://brew.sh)

run_once:

- `compaudit | xargs chmod g-w` to fix zsh compinit: insecure directories, run compaudit for list.
  There are insecure directories:
  /usr/local/share

- Execute this to make git full case senstive:

```
git config --unset-all core.ignorecase && git config --system core.ignorecase false
```

## `jira-cli`

1. Add new password to keychain (see [here](https://github.com/ankitpokhrel/jira-cli/discussions/356)) and use your Personal Access Token as password
2. If this feature is still not resolved (https://github.com/ankitpokhrel/jira-cli/issues/651), run this once to get shell completion for `jira-cli`:

```
jira completion zsh > /usr/local/share/zsh/site-functions/_jira
```

3. run `jira init`
