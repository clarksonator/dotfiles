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
    fish_add_path .local/share/gem/ruby/3.3.0/bin
    #function fish_title
    #  set -q argv[1]; or set argv (history|head -n 1) 
    #  echo (fish_prompt_pwd_dir_length=1 prompt_pwd): $argv " -- fish";
    #end
end
