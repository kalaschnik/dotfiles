# dotfiles

## Post clean install steps:

- Install [chezmoi](https://www.chezmoi.io) and apply dotfiles:

```bash
$ sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply kalaschnik
```

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
