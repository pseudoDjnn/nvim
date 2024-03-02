return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.startify")

    dashboard.section.header.val = {

[[                                                                                                  ]],
[[                                                                                                  ]],
[[                                                                                                  ]],
[[                                             _____ _______     ______ ___________ _______   __   _]],
[[                                            |_____]|_____|     |     |     |     \  |  | \  | \  |]],
[[                                            |      |_____|_____|_____|_____|_____/__|  |  \_|  \_|]],
[[                                                                                                  ]],                                                       
[[                                                                                                  ]],


    }

    alpha.setup(dashboard.opts)
  end,
}
