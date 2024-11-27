set PATH ~/.bun/bin $PATH

set -gx PATH "/run/user/1000/fnm_multishells/40981_1731762336621/bin" $PATH;
set -gx FNM_MULTISHELL_PATH "/run/user/1000/fnm_multishells/40981_1731762336621";
set -gx FNM_VERSION_FILE_STRATEGY "local";
set -gx FNM_DIR "/home/chaby/.local/share/fnm";
set -gx FNM_LOGLEVEL "info";
set -gx FNM_NODE_DIST_MIRROR "https://nodejs.org/dist";
set -gx FNM_COREPACK_ENABLED "false";
set -gx FNM_RESOLVE_ENGINES "true";
set -gx FNM_ARCH "x64";

zoxide init fish | source

# Create aliases
alias cls="clear"
alias g="git"
alias m="micro"

alias v="nvim"
alias nv="NVIM_APPNAME=nvim-nvchad nvim"
alias nm="NVIM_APPNAME=nvim-mini nvim"

alias ls="eza --icons=always --no-time"

# TODO: Replace journal aliases after switching to OpenRC

# Display critical errors
alias syslog_emerg="sudo dmesg --level=emerg,alert,crit"

# Output common errors
alias syslog="sudo dmesg --level=err,warn"

# Print logs from x server
alias xlog='grep "(EE)\|(WW)\|error\|failed" /var/log/Xorg.0.log'

# Remove archived journal files until the disk space they use falls below 100M
alias vacuum="journalctl --vacuum-size=100M"

# Make all journal files contain no data older than 2 weeks
alias vacuum_time="journalctl --vacuum-time=2weeks"

set -U fish_greeting
set fish_color_command green
set -gx EDITOR micro
set -gx VISUAL micro
set -gx BROWSER /usr/bin/firefox


if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end

# pnpm
set -gx PNPM_HOME "/home/chaby/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
