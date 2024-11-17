if status is-interactive
    # Commands to run in interactive sessions can go here
    set -x HOMEBREW_NO_ENV_HINTS
    set fish_greeting
    alias ls="eza --icons=always -lha"
    alias bat="bat --color=always"
    fish_add_path -g /opt/local/bin
end
