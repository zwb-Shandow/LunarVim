local M = {}

function M.config()
  lvim.builtin.translate = {
    active = true,
    on_config_done = nil,

    default = {
      command = "translate_shell",
      output = "floating",
      parse_before = "trim",
      parse_after = "oneline",
    },
    preset = {
      output = {
        split = {
          min_size = 8
        }
      }
    }
  }
end

function M.setup()
  local translate = require "translate"

  translate.setup(lvim.builtin.translate)
  if lvim.builtin.hop.on_config_done then
    lvim.builtin.hop.on_config_done(translate)
  end
end

return M
