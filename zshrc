# load our own completion functions
fpath+=$HOME/.zsh/pure

# pure prompt
autoload -U promptinit; promptinit
# change the prompt symbol
PURE_PROMPT_SYMBOL="~"
# change the path color
zstyle :prompt:pure:git:dirty color 242
prompt pure

for function in ~/.zsh/functions/*; do
  source $function
done

# automatically enter directories without cd
setopt auto_cd

# use sublime as the visual editor
export VISUAL=code
export EDITOR=code

# aliases
if [ -e "$HOME/.aliases" ]; then
  source "$HOME/.aliases"
fi

# use incremental search
bindkey "^R" history-incremental-search-backward

# add some readline keys back
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line

# expand functions in the prompt
setopt prompt_subst

# ignore duplicate history entries
setopt histignoredups

# keep TONS of history
export HISTSIZE=4096

# automatically pushd
setopt auto_pushd
export dirstacksize=5

# awesome cd movements from zshkit
setopt AUTOCD
setopt AUTOPUSHD PUSHDMINUS PUSHDSILENT PUSHDTOHOME
setopt cdablevars

# Try to correct command line spelling
setopt CORRECT CORRECT_ALL

# Enable extended globbing
setopt EXTENDED_GLOB

#nvm
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export PATH="$HOME/.yarn/bin:$PATH"

export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

. /usr/local/etc/profile.d/z.sh

export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

export PATH="$HOME/.bin:$PATH"

# recommended by brew doctor
export PATH="/usr/local/bin:$PATH"
eval "$(rbenv init - zsh --no-rehash)"

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
