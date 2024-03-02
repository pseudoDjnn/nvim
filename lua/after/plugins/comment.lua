return {
  "numToStr/Comment.nvim",
  lazy = false,
  config = function()
    require("Comment").setup()
  end,
  opts = {
    padding = true,
    sticky = true,
  }
}
