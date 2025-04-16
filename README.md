# pinentry


### pre requisitos

#### ubuntu

    sudo apt-get install scdaemon gnupg pinentry-gnome3 && sudo ln -s /usr/bin/pinentry /usr/local/bin/pinentry

#### macOS

    brew install gnupg pinentry-mac && sudo ln -s /opt/homebrew/bin/pinentry-mac /usr/local/bin/pinentry

### ~/.gnupg/gpg-agent.conf

    enable-ssh-support
    pinentry-program /usr/local/bin/pinentry
    default-cache-ttl 60
    max-cache-ttl 120

### ~/.zshrc

    export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket) && \
    gpgconf --launch gpg-agent

## Links

[Artigo Youtube](https://www.youtube.com/watch?v=4298jmhR0cs)

[Artigo 2](https://opensource.com/article/19/4/gpg-subkeys-ssh)

[Gist](https://gist.github.com/caiodelgadonew/0c1c87244735aa16579e0b778c9724d6)