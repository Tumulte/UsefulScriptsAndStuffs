source /usr/share/zsh-antigen/antigen.zsh
export LANG=fr_FR.UTF-8
alias ll="ls -la"
#git les commandes courantes en quelques lettres :
alias ga='git add'
alias gam='git addm'
alias gau='git addu'
alias grm='git rmm'
alias gc='git commit -m'
alias gs='git status'
alias tricot='git pull'

antigen use oh-my-zsh
antigen bundle git
antigen bundle autojump
antigen bundle colorize
antigen bundle colored-man
antigen bundle symfony2
antigen bundle compleat
antigen bundle cp
antigen bundle extract
antigen bundle common-aliases

export TERM='xterm-256color'
function _update_ps1()
{
  export PROMPT="$(~/powerline-zsh.py $?)"
}
precmd()
{
  _update_ps1
}
autoload -U bashcompinit
bashcompinit
source /home/tumulte/.cdargs-zsh.sh

PERL_MB_OPT="--install_base \"/home/dev/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/dev/perl5"; export PERL_MM_OPT;
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
