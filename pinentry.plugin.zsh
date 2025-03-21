function pm-ssh-git-test {
    ssh -T git@github.com 2>&1 | grep -q successfully && return 0 || return 1
}

function pm-ssh-add-list-test {
    ssh-add -l > /dev/null 2>&1 && return 0 || return 1
}

alias gpg-agent='gpg-agent --pinentry-program "$(which pinentry-mac)"'
export SSH_AUTH_SOCK=~/.gnupg/S.gpg-agent.ssh
if ! pm-ssh-add-list-test ; then
    killall -9 gpg-agent 2> /dev/null;
    gpg-agent --daemon;
fi
while ! pm-ssh-add-list-test ; do echo; done
while ! pm-ssh-git-test ; do echo; done
