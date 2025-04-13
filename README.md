# pinentry


## ubuntu

    sudo apt-get install scdaemon gnupg pinentry-gnome3

## ~/.gnupg/gpg-agent.conf

    enable-ssh-support
    pinentry-program /usr/bin/pinentry
    default-cache-ttl 60
    max-cache-ttl 120

## ~/.zshrc
    # GPG-Agent
    unset SSH_AGENT_PID
    if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
    export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
    fi
    export GPG_TTY=$(tty)

## Links

[Artigo 1](https://www.youtube.com/watch?v=4298jmhR0cs)

[Artigo 2](https://opensource.com/article/19/4/gpg-subkeys-ssh)

[Gist](https://gist.github.com/caiodelgadonew/0c1c87244735aa16579e0b778c9724d6)