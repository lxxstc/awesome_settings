
local util    = require("hh.util")
local config  = require("etc/config")
local lain     = require("lain")
lain.helpers   = require("lain.helpers")

module("hh.startups")

local compton_conf_path = config.dotfile_dir .. "/etc/compton.conf"
local compton_conf_path_hh = config.hh_dotfile_dir .. "/compton.conf"
if lain.helpers.file_exists(compton_conf_path_hh) then
  compton_conf_path = compton_conf_path_hh
end

-- Java GUI's fix
util.sexec("wmname LG3D")
-- Set keyboard interval
util.sexec("xset r rate 300")
util.run_once("compton --config " .. compton_conf_path)
