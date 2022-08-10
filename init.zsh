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
# Function: p6df::modules::short::init()
#
#>
######################################################################
p6df::modules::short::init() {

  p6df::modules::short::prompt::init

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::short::prompt::init()
#
#>
######################################################################
p6df::modules::short::prompt::init() {

  p6df::core::prompt::line::add "p6df::modules::short::prompt::line"
}

######################################################################
#<
#
# Function: p6df::modules::short::prompt::line()
#
#>
######################################################################
p6df::modules::short::prompt::line() {

  p6_short_prompt_info
}

######################################################################
#<
#
# Function: str str = p6_short_prompt_info()
#
#  Returns:
#	str - str
#
#>
######################################################################
p6_short_prompt_info() {

  local str

  str="short:\t\t  "

  p6_return_str "$str"
}
