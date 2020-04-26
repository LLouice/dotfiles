# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin directories
export PATH="$HOME/bin:$HOME/.local/bin:$PATH"
# export PATH="$HOME/.local/share/junest/bin:$PATH"

#=============================== alias ====================================
# proxy
alias setproxy="export ALL_PROXY=socks5://127.0.0.1:1080"
alias unsetproxy="unset ALL_PROXY"

# ssh
alias sshe="ssh -p 17877 llouice@10.108.209.96"
alias sshc="ssh -p 10022 llouice@173.82.119.22"

# common
alias l=exa
alias ls=exa
alias ll="exa -a"
alias lll="exa -lh"
alias llll="exa -alh"
lt(){
    exa -aT -L $1
}
alias llt="exa -aT"
alias vi=nvim
alias vim=nvim
alias duh="du -h --max-depth=0"
alias fq="pc curl -IL www.youtube.com"

# nvidia
alias nv='nvidia-smi'
alias nvl='nvidia-smi -l'
alias NV="__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia"

# aria2
alias ar='aria2c --conf-path="/home/llouice/.mycfgs/.aria2/aria2.conf"'

# other
alias pc=proxychains
alias cfg="nvim ~/.mycfgs/.profile"
alias cfgz="nvim ~/.zshrc"
# alias rc="source $HOME/.mycfgs/.profile" 
alias rz="source $HOME/.zshrc"
alias e.="dolphin ."
alias dact="conda deactivate"
# alias login="bash ~/docs/sc-bupt.sh --start 2018110757 221216"
# alias v2ray="v2ray -config /etc/v2ray/config.json"
# alias l='ls -CF'
# alias lw='ls | wc -l'
# alias lh='ls | head'
# alias lt='ll -th'

# conda 
# alias tb="tensorboard --logdir=."
# alias fastai="conda activate fastai"
# alias tf="conda activate tf"
# alias dact="conda deactivate"
# alias tf1="conda activate tf1"


# junest
# alias jj="junest -- zsh"
# alias jjt="junest proot -f -- zsh"

# emacs
alias emd="emacs --daemon"
alias ect="emacsclient -nw"

# tmux
alias tmux="tmux -f /home/llouice/.mycfgs/.tmux/.tmux.conf"
alias tn="tmux new -s"
alias ta="tmux attach -t"
alias tl="tmux list-sessions"
alias tlb="tmux list-buffers"
alias tlw="tmux list-windows"
alias tk="tmux kill-session -t"
alias tks="tmux kill-server"
#=============================== alias ====================================

#=============================== export ====================================
export EDITOR="vim"
# rust
export PATH="$HOME/.cargo/bin:$PATH"
export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"

# bin
export PATH="$HOME/bin:$PATH"

# export CPATH="/usr/local/cuda/include"
# export LD_LIBRARY_PATH="/usr/local/cuda/lib64:/usr/local/cuda-10.1/lib64:usr/local/cuda/extras/CUPTI/lib64"
# export SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt
# export TMPDIR="/home/llouice/tmp"

# zsh
export SHELL=/bin/zsh
[ -z "$ZSH_VERSION" ] && exec /bin/zsh -l

# cfg
export CFG="/home/llouice/.mycfgs"


# openssl
# export OPENSSL_INCLUDE_DIR=/home/llouice/.junest/usr/include/openssl

# DGL
# export DGLBACKEND="tensorflow"
# export TF_FORCE_GPU_ALLOW_GROWTH=true
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:"/home/llouice/anaconda3/envs/tf/lib/python3.7/site-packages/tensorflow_core" 

# conda pkgs
# export PKG="/home/llouice/anaconda3/envs/tf/lib/python3.7/site-packages"

# XDG
# export XDG_CONFIG_HOME=/home/llouice/.config

 
