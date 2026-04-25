#  Silence the greeting
set -g fish_greeting ""

fish_add_path ~/.cargo/bin

set -gx EDITOR zed
set -gx VISUAL zed
set -gx TERM ghostty
set -gx COLORTERM truecolor

# Cargo
alias c "cargo run"
alias b "cargo build"
alias br "cargo build --release"
alias ct "cargo test"
alias cl "cargo clippy"
alias cf "cargo fmt"
alias cu "cargo update"

#  Zed
alias z "zeditor ."

#  Backlight script
alias on "/usr/local/bin/backlight.sh on"
alias off "/usr/local/bin/backlight.sh off"

#  Navigation
alias .. "cd .."
alias ... "cd ../.."
alias .... "cd ../../.."
alias h "cd ~/"

#  ls → eza (prettier ls)
#  install: sudo apt install eza
if command -q eza
    alias ls "eza --icons --group-directories-first"
    alias ll "eza --icons --group-directories-first -la"
    alias lt "eza --icons --tree --level=2"
    alias lta "eza --icons --tree --level=3 -a"
else
    alias ls "ls --color=auto"
    alias ll "ls -lahF --color=auto"
end

#  Git shortcuts
alias g git
alias gs "git status -sb"
alias ga "git add -A"
alias gc "git commit -m"
alias gp "git push"
alias gpl "git pull"
alias glog "git log --oneline --graph --decorate -15"
alias gd "git diff"
alias gco "git checkout"
alias gb "git branch"

#  Misc utilities
alias cat "bat --style=plain"
alias grep "grep --color=auto"
alias q exit

starship init fish | source
