#!/usr/bin/env bash

# this is my tmux cpu bg colors
# this goes in .config/tmux/plugins/tmux-cpu/scripts/cpu_bg_color.sh

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# shellcheck source=scripts/helpers.sh
source "$CURRENT_DIR/helpers.sh"

cpu_low_bg_color=""
cpu_medium_bg_color=""
cpu_high_bg_color=""

cpu_low_default_bg_color="#[bg=#98971a]"
cpu_medium_default_bg_color="#[bg=#d65d0e]"
cpu_high_default_bg_color="#[bg=#b52e28]"

get_bg_color_settings() {
  cpu_low_bg_color=$(get_tmux_option "@cpu_low_bg_color" "$cpu_low_default_bg_color")
  cpu_medium_bg_color=$(get_tmux_option "@cpu_medium_bg_color" "$cpu_medium_default_bg_color")
  cpu_high_bg_color=$(get_tmux_option "@cpu_high_bg_color" "$cpu_high_default_bg_color")
}

print_bg_color() {
  local cpu_percentage
  local load_status
  cpu_percentage=$("$CURRENT_DIR"/cpu_percentage.sh | sed -e 's/%//')
  load_status=$(load_status "$cpu_percentage" "cpu")
  if [ "$load_status" == "low" ]; then
    echo "$cpu_low_bg_color"
  elif [ "$load_status" == "medium" ]; then
    echo "$cpu_medium_bg_color"
  elif [ "$load_status" == "high" ]; then
    echo "$cpu_high_bg_color"
  fi
}

main() {
  get_bg_color_settings
  print_bg_color
}
main "$@"
