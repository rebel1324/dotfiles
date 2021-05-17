#==================================================================================
# Friendly Aliases
#==================================================================================

alias defaults "nvim ~/.config/fish/config.fish"
alias tmuxconf "nvim ~/.tmux.conf"

# replace all ls to exa
if test -n "(which exa)"
    alias ls=exa
    alias ll="exa -l"
end

# for manjaro environment
if test -f "/etc/arch-release"
    alias reload-terminal "kitty @ set-colors --all --configured ~/.config/kitty/kitty.conf"
    alias termconf "nvim ~/.config/kitty/kitty.conf"

    set -u EDITOR nvim
    set -u PAGER bat
end

# for generic linux environment - including the manjaro environment
if test -f "/etc/os-release"

end

if test -n "(which nvim)"
    alias vi=nvim
    alias vim=nvim
    alias vimconf "nvim ~/.config/nvim/init.vim"
else
    alias vimconf "vim ~/.vimrc"
end


#==================================================================================
# I'll add something later
#==================================================================================
#
#==================================================================================
# Friendly Aliases
#==================================================================================

set --export FZF_DEFAULT_COMMAND 'fd --type --follow --hidden'
set --export FZF_CTRL_T_COMMAND "$FZF_DEFAULT_COMMAND"

#==================================================================================
# Friendly Aliases
#==================================================================================
set fish_color_normal F8F8F2 # the default color
set fish_color_command F92672 # the color for commands
set fish_color_quote E6DB74 # the color for quoted blocks of text
set fish_color_redirection AE81FF # the color for IO redirections
set fish_color_end F8F8F2 # the color for process separators like ';' and '&'
set fish_color_error F8F8F2 --background=F92672 # the color used to highlight potential errors
set fish_color_param A6E22E # the color for regular command parameters
set fish_color_comment 75715E # the color used for code comments
set fish_color_match F8F8F2 # the color used to highlight matching parenthesis
set fish_color_search_match --background=49483E # the color used to highlight history search matches
set fish_color_operator AE81FF # the color for parameter expansion operators like '*' and '~'
set fish_color_escape 66D9EF # the color used to highlight character escapes like '\n' and '\x70'
set fish_color_cwd 66D9EF # the color used for the current working directory in the default prompt

# Additionally, the following variables are available to change the highlighting in the completion pager:
set fish_pager_color_prefix F8F8F2 # the color of the prefix string, i.e. the string that is to be completed
set fish_pager_color_completion 75715E # the color of the completion itself
set fish_pager_color_description 49483E # the color of the completion description
set fish_pager_color_progress F8F8F2 # the color of the progress bar at the bottom left corner
set fish_pager_color_secondary F8F8F2 # the background color of the every second completion

#==================================================================================
# Friendly Aliases
#==================================================================================
#set -g theme_display_git no
#set -g theme_display_git_dirty no
#set -g theme_display_git_untracked no
#set -g theme_display_git_ahead_verbose no
#set -g theme_display_git_dirty_verbose no
#set -g theme_display_git_stashed_verbose no
#set -g theme_display_git_default_branch no
#set -g theme_git_default_branches master main
#set -g theme_git_worktree_support no
#set -g theme_use_abbreviated_branch_name no
#set -g theme_display_vagrant no
#set -g theme_display_docker_machine no
#set -g theme_display_k8s_context no
#set -g theme_display_hg no
#set -g theme_display_virtualenv no
#set -g theme_display_nix no
#set -g theme_display_ruby no
#set -g theme_display_node no
#set -g theme_display_user no
#set -g theme_display_hostname no
#set -g theme_display_vi no
set -g theme_display_date yes
#set -g theme_display_cmd_duration no
#set -g theme_title_display_process no
#set -g theme_title_display_path no
#set -g theme_title_display_user no
#set -g theme_title_use_abbreviated_path no
set -g theme_date_format "+%H:%M"
#set -g theme_date_timezone Asia/Seoul
#set -g theme_avoid_ambiguous_glyphs no
set -g theme_powerline_fonts yes
set -g theme_nerd_fonts yes
#set -g theme_show_exit_status no
#set -g theme_display_jobs_verbose no
#set -g default_user no
set -g theme_color_scheme monokai
set -g fish_prompt_pwd_dir_length 0
set -g theme_project_dir_length 1
#set -g theme_newline_cursor no
