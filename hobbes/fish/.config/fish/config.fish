if status is-interactive
  set -g fish_greeting
	alias ls='eza --icons=always -lh'
	alias vim='nvim'
	alias vi='nvim'
	alias cat='bat --color always -p'
	alias sv='sudo nvim'
	alias man='batman'
  alias vhc='nvim ~/.config/hypr/hyprland.conf'
  alias vwc='nvim ~/.config/waybar/config.jsonc'
  alias vws='nvim ~/.config/waybar/style.css'
  alias vfc='nvim ~/.config/fish/config.fish'
  alias refish="source ~/.config/fish/config.fish"
  alias reway="killall -SIGUSR2 waybar"
  alias grep="grep --color=always -I"
  set -gx EDITOR nvim
  set -gx GEM_HOME $HOME/.local/share/gem
  set -gx FREETYPE_PROPERTIES "truetype:interpreter-version=40"
  fish_add_path $HOME/.local/share/gem/ruby/3.3.0/bin
  #if not set -q SSH_AGENT_PID
  #    eval (ssh-agent -c) > /dev/null
  #    set -U SSH_AGENT_PID $SSH_AGENT_PID
  #    set -U SSH_AUTH_SOCK $SSH_AUTH_SOCK
  #    set -eg SSH_AGENT_PID
  #    set -eg SSH_AUTH_SOCK
  #    ssh-add -kq ~/.ssh/github
  #end
  eval (keychain --eval -q id_rsa github)

  starship init fish | source
end
