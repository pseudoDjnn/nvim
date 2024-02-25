--Cokeline
return {
  "willothy/nvim-cokeline",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nivm-tree/nvim-web-devicons",
    "stevearc/resession.nvim",
  },
  config = function()
    require("cokeline").setup()
  end,
}
