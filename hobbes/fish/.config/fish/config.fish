if status is-interactive
  set -g fish_greeting
	alias ls='eza --icons=always -lh'
	alias vim='nvim'
	alias vi='nvim'
	alias cat='bat --color always'
	alias sv='sudo nvim'
	alias man='batman'
  alias vhc='nvim ~/.config/hypr/hyprland.conf'
  alias vwc='nvim ~/.config/waybar/config.jsonc'
  alias vws='nvim ~/.config/waybar/style.css'
  alias vfc='nvim ~/.config/fish/config.fish'
  alias refish="source ~/.config/fish/config.fish"
  alias reway="killall -SIGUSR2 waybar"
  set -gx EDITOR nvim
  if not set -q SSH_AGENT_PID
      eval (ssh-agent -c) > /dev/null
      set -U SSH_AGENT_PID $SSH_AGENT_PID
      set -U SSH_AUTH_SOCK $SSH_AUTH_SOCK
  end

  starship init fish | source
end