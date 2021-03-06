
local screen  = screen
local awful   = require("awful")
awful.layout  = require("awful.layout")
awful.tag     = require("awful.tag")
local ipairs  = ipairs
local lain    = require("lain")
local config  = require("etc/config")

module("hh.tag")

-- lain
lain.layout.termfair.nmaster = 2
lain.layout.termfair.ncol    = 1

-- Window management layouts
layouts = {
  awful.layout.suit.floating,         -- 1
  lain.layout.uselessfair.horizontal, -- 2
  lain.layout.uselesstile,            -- 3
  lain.layout.uselessfair             -- 4
  -- exz_layout_chrome                   -- 5
}

tags = {
  names  = { "[1:Term", "2:Code]", "[3:Term", "4:Code]",
             "[5:DOC]", "6:IM", "7:VM", "[8:MAIL", "9:WEB]"},
  layout = { layouts[3], layouts[3], layouts[3], layouts[2],
             layouts[2], layouts[4], layouts[3], layouts[3], layouts[2] }
}

for s = 1, screen.count() do
  tags[s] = awful.tag(tags.names, s, tags.layout)
  awful.screen.padding(screen[s], config.screen_padding)
end
