# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::short::deps()
#
#>
######################################################################
p6df::modules::short::deps() {
  ModuleDeps=(
    p6m7g8-dotfiles/p6df-js
  )
}

######################################################################
#<
#
# Function: p6df::modules::short::langs()
#
#>
######################################################################
p6df::modules::short::langs() {

  p6_js_npm_global_install "@shortcut-cli/shortcut-cli"

  p6_return_void
}

######################################################################
#<
#
# Function: str str = p6df::modules::short::prompt::line()
#
#  Returns:
#	str - str
#
#  Environment:	 P6_DFZ_SHORT_ID
#>
######################################################################
p6df::modules::short::prompt::line() {

  local str
  if ! p6_string_blank "$P6_DFZ_SHORT_ID"; then
    str="short:\t\t  ticket: $P6_DFZ_SHORT_ID"
  fi

  p6_return_str "$str"
}

######################################################################
#<
#
# Function: p6df::modules::short::vscodes()
#
#>
######################################################################
p6df::modules::short::vscodes() {

  code --install-extension shortcut.shortcut

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::short::clones()
#
#  Environment:	 P6_DFZ_SRC_FOCUSED_DIR
#>
######################################################################
p6df::modules::short::clones() {

  p6_github_login_clone "shortcut" "$P6_DFZ_SRC_FOCUSED_DIR"

  p6_return_void
}
