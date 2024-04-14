return {
    {
        "rose-pine/neovim",
        lazy = false,
        priority = 1000,
        name = "rose-pine",
        config = function()
            require("rose-pine").setup({
                styles = { transparency = true },
                highlight_groups = {
                    Normal = { bg = "none", ctermbg = "none" },
                    NormalFloat = { bg = "none", ctermbg = "none" },
                },
            })
            vim.cmd("colorscheme rose-pine")
        end
    }
}
