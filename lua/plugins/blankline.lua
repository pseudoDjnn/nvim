return {
  "lukas-reineke/indent-blankline.nvim",
  config = function ()
    require("ibl").setup()local highlight = {
    "RainbowRed",
    "RainbowYellow",
    "RainbowBlue",
    "RainbowOrange",
    "RainbowGreen",
    "RainbowViolet",
    "RainbowCyan",
}

local hooks = require "ibl.hooks"
-- create the highlight groups in the highlight setup hook, so they are reset
-- every time the colorscheme changes
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#8F454A" })
    vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#826D46" })
    vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#3C6B91" })
    vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#7D5B3C" })
    vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#5D784A" })
    vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#824E91" })
    vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#397A82" })
end)

require("ibl").setup { indent = { highlight = highlight } }
      end
  }
