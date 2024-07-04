return {
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
                        theme = "tokyonight",
                    },
                })
            end,
        },
    }
