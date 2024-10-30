if status is-interactive
    # Commands to run in interactive sessions can go here
    set -g fish_greeting
    alias ls="eza --icons=always -la"
    alias cat="bat --color always"
    alias vim="nvim"
    alias sv="sudo nvim"
    alias man="batman"
    alias vhc="nvim ~/.config/hypr/hyprland.conf"
    alias vfc="nvim ~/.config/fish/config.fish"
    eval (keychain --eval -q id_rsa github)
end
