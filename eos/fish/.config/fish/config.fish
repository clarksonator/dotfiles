if status is-interactive
    # Commands to run in interactive sessions can go here
    set -g fish_greeting
    alias ls="eza --icons=always -la"
    alias cat="bat --color always"
    alias vim="nvim"
    alias sv="sudo nvim"
    alias man="batman"
    alias vhc="nvim ~/.config/hypr/hyprland.conf"
    if not set -q SSH_AGENT_PID
      eval (ssh-agent -c) > /dev/null
      set -U SSH_AGENT_PID $SSH_AGENT_PID
      set -U SSH_AUTH_SOCK $SSH_AGENT_SOCK
    end
end
