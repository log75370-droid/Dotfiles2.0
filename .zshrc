# Path to your oh-my-zsh installation.
export DEFAULT_USER="fernando"
export TERM="xterm-256color"
export ZSH=/usr/share/oh-my-zsh
ZSH_THEME="darkblood"
export XKB_DEFAULT_LAYOUT="us,ru"
export XKB_DEFAULT_OPTIONS="grp:alt_shift_toggle"
export PATH="$HOME/.local/bin:$PATH"

autoload -Uz compinit && compinit
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' # Регистронезависимое автодополнение
zstyle ':completion:*' menu select # Меню выбора
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
PROMPT='%n%m >> %F{cyan}%~%f
%F{magneta}»%f '

# Путь к файлу истории и её размер
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# Опции истории
setopt APPEND_HISTORY       # Добавлять в историю, а не перезаписывать
setopt SHARE_HISTORY        # Делиться историей между всеми вкладками
setopt HIST_IGNORE_DUPS     # Игнорировать дубликаты, идущие подряд
setopt HIST_IGNORE_SPACE    # Не записывать команды, начинающиеся с пробела

cursor=line

plugins=(git zsh-autosuggestions zsh-syntax-highlighing zsh-history-substring-search)


fastfetch
source /usr/share/zsh/plugins/zsh-autosuggestions
source /usr/share/zsh/plugins/zsh-history-substring-search
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# Полное отключение подсветки синтаксиса
# Включаем цветной вывод для основных команд
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'

