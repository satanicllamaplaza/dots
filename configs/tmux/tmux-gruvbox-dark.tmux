## this is my modified tmux theme
## it goes in .config/tmux.themes/tmux-gruvbox-dark.tmux


## COLORSCHEME: gruvbox dark (medium)
set-option -g status "on"

# default statusbar color
set-option -g status-style bg='#3c2e26',fg='#c4b686' # bg=bg1, fg=fg1

# default window title colors
set-window-option -g window-status-style bg='#c09129',fg='#3c2e26' # bg=yellow, fg=bg1

# default window with an activity alert
set-window-option -g window-status-activity-style bg='#3c2e26',fg=colour248 # bg=bg1, fg=fg3

# active window title colors
set-window-option -g window-status-current-style bg='#953022',fg='#594535' # fg=bg1

# pane border
set-option -g pane-active-border-style fg='#c4b686' #fg2
set-option -g pane-border-style fg='#3c2e26' #bg1

# message infos
set-option -g message-style bg='#594535',fg='#c4b686' # bg=bg2, fg=fg1

# writing commands inactive
set-option -g message-command-style bg='#3c2e26',fg='#c4b686' # bg=bg1, fg=fg1

# pane number display
set-option -g display-panes-active-colour colour250 #fg2
set-option -g display-panes-colour colour237 #bg1

# clock
set-window-option -g clock-mode-colour colour109 #blue

# bell
set-window-option -g window-status-bell-style bg='#953022',fg='#3c2e26' # bg=red, fg=bg

## Theme settings mixed with colors (unfortunately, but there is no cleaner way)
set-option -g status-justify "left"
set-option -g status-left-style none
set-option -g status-left-length "80"
set-option -g status-right-style none
set-option -g status-right-length "80"
set-window-option -g window-status-separator ""


set-option -g status-left "#{cpu_bg_color}#[fg=#282828]#[bold]  #{cpu_percentage} #{cpu_fg_color}#[bg=#3c2e26,nobold,noitalics,nounderscore]"

set-option -g status-right " #{?client_prefix,🌱PREFIX🌱,}#[bg=#3c2e26,fg=#594535 nobold, nounderscore, noitalics]#[bg=#594535,fg=#cec090] %m-%d-%y  %I:%M #{battery_color_charge_fg}#[bg=#594535,nobold,noitalics,nounderscore]#{battery_color_charge_bg}#[fg=#202020]#[bold] #{battery_remain} 󰚥 #{battery_percentage} "

#set-option -g status-right " #{?client_prefix,🌱PREFIX🌱,}#[bg=#3c2e26,fg=#594535 nobold, nounderscore, noitalics]#[bg=#594535,fg=#cec090] %m-%d-%y  %I:%M #[bg=#594535,fg=#98971a,nobold,noitalics,nounderscore]#[bg=#98971a,fg=#202020] #[bold]#{battery_remain} "

set-window-option -g window-status-current-format "#[bg=#c09129,fg=#3c2e26,nobold,noitalics,nounderscore]#[bg=#c09129,fg=#3c2e26] #I #[bg=#c09129,fg=#3c2e26,bold] #W#{?window_zoomed_flag,*Z,} #[bg=#3c2e26,fg=#c09129,nobold,noitalics,nounderscore]"
set-window-option -g window-status-format "#[bg=#594535,fg=#3c2e26,noitalics]#[bg=#594535,fg=#c4b686] #I #[bg=#594535,fg=#c4b686] #W #[bg=#3c2e26,fg=#594535,noitalics]"

# vim: set ft=tmux tw=0 nowrap:
