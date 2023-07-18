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
