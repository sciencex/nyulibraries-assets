# Require 'nyulibraries' 
# = require nyulibraries
$ ->
  # BobCat Tabs Tips
  new window.nyulibraries.Popover(".nav-tabs li a").init()
  # My Workspace Help Popover
  new window.nyulibraries.PartialHoverPopover("#account h2 a").init()
  # Save List Dropdown
  new window.nyulibraries.Dropdown(".save_list").init()