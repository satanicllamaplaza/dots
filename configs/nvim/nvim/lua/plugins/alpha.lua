return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.startify")

    dashboard.section.header.val = {
      [[                                                                                 ]],
      [[       .o.                                                                       ]],
      [[      .888.                                                                      ]],
      [[     .8"888.      .oooo.   oooo d8b  .ooooo.  ooo. .oo.                          ]],
      [[    .8' `888.    `P  )88b  `888""8P d88' `88b `888P"Y88b                         ]],
      [[   .88ooo8888.    .oP"888   888     888   888  888   888                         ]],
      [[  .8'     `888.  d8(  888   888     888   888  888   888                         ]],
      [[ o88o     o8888o `Y888""8o d888b    `Y8bod8P' o888o o888o                        ]],
      [[                                                                                 ]],
      [[ oooooooooo.                       oooo                              oooo  oooo  ]],
      [[ `888'   `Y8b                      `888                              `888  `888  ]],
      [[  888     888 oooo  oooo   .oooo.o  888 .oo.   ooo. .oo.    .ooooo.   888   888  ]],
      [[  888oooo888' `888  `888  d88(  "8  888P"Y88b  `888P"Y88b  d88' `88b  888   888  ]],
      [[  888    `88b  888   888  `"Y88b.   888   888   888   888  888ooo888  888   888  ]],
      [[  888    .88P  888   888  o.  )88b  888   888   888   888  888    .o  888   888  ]],
      [[ o888bood8P'   `V88V"V8P' 8""888P' o888o o888o o888o o888o `Y8bod8P' o888o o888o ]],                                                                        
    }

    alpha.setup(dashboard.opts)
  end,
}
