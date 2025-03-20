####> Enviorement variable

# Rust
set -gx CARGO_HOME "$HOME/.lib/.cargo"
set -gx RUSTUP_HOME "$HOME/.lib/.rustup"

# Npm
set -gx NPM_CONFIG_USERCONFIG "$HOME/.config/npm/.npmrc"
set -gx NPM_CONFIG_CACHE "$HOME/.config/npm/.npm"
set -gx NPM_CONFIG_PREFIX "$HOME/.config/npm/.npm-global"

# Git
set -gx GIT_CONFIG_GLOBAL "$HOME/.config/git/.gitconfig"

set -gx LESSHISTFILE "$HOME/.config/less/.lesshst"

####> Set paths
set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

set -gx PATH ~/.lib/.cargo/bin $PATH # Cargo 

set -gx PATH ~/.docker/bin $PATH # Docker

# Initiate configuration based in os. Change aliases
switch (uname)
  case Linux
    source (dirname (status --current-filename))/config-linux.fish
end

# Bindings
source .config/fish/bindings.fish

# Starship
set -x STARSHIP_CONFIG ~/.config/starship/starship.toml
starship init fish | source 
enable_transience # enable transience prompt