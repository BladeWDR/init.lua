  return    {
        {
    "RRethy/nvim-base16",
          lazy = false,
          priority=10000,
          config = function()
              vim.cmd('colorscheme base16-rose-pine')
          end
      },
        {
            "nvim-lualine/lualine.nvim",
          dependencies = {
              "nvim-tree/nvim-web-devicons",
              "RRethy/nvim-base16"},
            lazy = false,
            priority = 9000,
            config = function()
            local lualine = require("lualine")
            lualine.setup({
              options = {
                theme = "base16",
              },
            })
            end,
        },


    }

