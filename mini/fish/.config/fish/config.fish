if status is-interactive
    # Commands to run in interactive sessions can go here
    set -x HOMEBREW_NO_ENV_HINTS TRUE
    set -x EDITOR "nvim"
    set fish_greeting
    alias ls="eza --icons=always -lha"
    alias cat="bat --color=always -p"
    alias vim="nvim"
    alias vac="nvim ~/.aerospace.toml"
    alias vfc="nvim ~/.config/fish/config.fish"
    alias refish="source ~/.config/fish/config.fish"
    fish_add_path -g /opt/local/bin
    fish_add_path -g /opt/homebrew/bin
    fish_add_path /opt/homebrew/opt/ruby/bin
    fish_add_path /opt/homebrew/lib/ruby/gems/3.3.0/bin
  #if test SSH_CLIENT
    keychain -q github
  # else
  #   ssh-add --apple-use-keychain ~/.ssh/github -q
  # end
end


begin
    set -l HOSTNAME (hostname)
    if test -f ~/.keychain/$HOSTNAME-fish
        source ~/.keychain/$HOSTNAME-fish
    end
end
