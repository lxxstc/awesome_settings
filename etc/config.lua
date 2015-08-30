local home_dir       = os.getenv("HOME")
local dotfile_dir    = home_dir .. "/.config/awesome"
local hh_dotfile_dir = home_dir .. "/.hh/awesome"

return {
  hh_dotfile_dir  = hh_dotfile_dir,
  dotfile_dir     = dotfile_dir,
  exec_term       = "/usr/bin/zsh -c",
  modkey          = "Mod4",
  altkey          = "Mod1",
  terminal        = "urxvt",
  editor          = os.getenv("EDITOR") or "emacs -nw",
  gui_editor      = "emacs",
  browser         = "dwb",
  browser2        = "firefox",
  graphics        = "gimp",
  screen_padding  = { top=3, right=3, bottom=3, left=3 }
}