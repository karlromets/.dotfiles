if [ -d "$HOME/bin" ]; then
    case ":$PATH:" in *":$HOME/bin:"*) ;; *) export PATH="$HOME/bin:$PATH" ;; esac
fi

if [ -d "$HOME/.local/bin" ]; then
   case ":$PATH:" in *":$HOME/.local/bin:"*) ;; *) export PATH="$HOME/.local/bin:$PATH" ;; esac
fi

if [ -d "~/.console-ninja/.bin" ]; then
   case ":$PATH:" in *":~/.console-ninja/.bin:"*) ;; *) export PATH="~/.console-ninja/.bin:$PATH" ;; esac
fi

if [ -d "$(pwd)/bin" ]; then
   case ":$PATH:" in *":$(pwd)/bin:"*) ;; *) export PATH="$PATH:$(pwd)/bin" ;; esac
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

if [ -f ~/.zsh_profile_env ]; then
    source ~/.zsh_profile_env
fi

export TERMINAL=ghostty
