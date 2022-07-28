local M = {}

function M.config()
  lvim.builtin.hop = {
    active = true,
    on_config_done = nil,

    keys = "QWERTY",
    quit_key = "<ESC>",
    jump_on_sole_occurrence = false,
    case_insensitive = false,
    create_h1_autocmd = true,
    uppercase_labels = false,
    multi_windows = false,
  }
end

function M.setup()
  local hop = require "hop"

  hop.setup(lvim.builtin.hop)
  if lvim.builtin.hop.on_config_done then
    lvim.builtin.hop.on_config_done(hop)
  end
end

return M
