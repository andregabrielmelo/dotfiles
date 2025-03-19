####> Aliases

# Better ls
if type -q eza
  alias ls "eza --icons --group-directories-first -1"
  alias la "ls -A"
  alias ll "ls -lh --icons"
  alias lla "ll -A"
  alias tree "ls --tree -D"
end

####> Abrreviations

# System
abbr SS systemctl status
abbr SR systemctl restart

# Settings
abbr settings "source ~/settings_files.fish"
abbr config "code ~/.config/fish/config.fish"

# Plugins, packages and extensions
abbr plugins "fisher list"
abbr packages "apt list --manual-installed"

# Clead cache and memory
abbr clean "sudo apt autoremove && sudo apt clean"

## Better ping
abbr ping "gping"

# Benchmark
abbr bench "hyperfine"

# Code pic
abbr codepic "silicon"