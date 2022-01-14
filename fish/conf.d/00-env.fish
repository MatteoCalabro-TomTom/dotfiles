set -l config_home $HOME/.config

set -l brew_prefix /opt/homebrew
test -d $brew_prefix && $brew_prefix/bin/brew shellenv | source || true

set -l brew_openssl_path $brew_prefix/opt/openssl@1.1
test -d $brew_openssl_path && fish_add_path $brew_openssl_path/bin

set -l brew_make_path $brew_prefix/opt/make
test -d $brew_make_path && fish_add_path $brew_make_path/libexec/gnubin

set -gx GPG_TTY (tty)
set -gx XDG_CONFIG_HOME "$config_home"
set -gx SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)
set -gx STARSHIP_CONFIG "$config_home/starship/config.toml"
set -gx EDITOR (which amp || which micro || which vi)

set -gx LDFLAGS "-L$brew_openssl_path/lib"
set -gx CPPFLAGS "-I$brew_openssl_path/include"
set -gx PKG_CONFIG_PATH "$brew_openssl_path/lib/pkgconfig"

type -q cargo && fish_add_path ~/.cargo/bin || true

set -l go_path $HOME/.go
if test -e $go_path/env
    source $go_path/env
end

if type -q volta
    set -l volta_home "$HOME/.volta"
    set -gx VOLTA_HOME $volta_home
    fish_add_path $volta_home/bin
end
