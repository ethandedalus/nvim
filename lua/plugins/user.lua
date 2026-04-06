-- You can also add or configure plugins by creating files in this `plugins/` folder
-- PLEASE REMOVE THE EXAMPLES YOU HAVE NO INTEREST IN BEFORE ENABLING THIS FILE
-- Here are some examples:

local dev = require "plugins.dev"
local ui = require "plugins.ui"

---@type LazySpec
return {
  dev,
  ui,
}
