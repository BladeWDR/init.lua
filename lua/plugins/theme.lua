return {

    --start colorscheme when loading Neovim.
    {
        "rose-pine/neovim",
        lazy = false, -- ensure that this is loaded at startup.
        priority = 1000,
        name = "rose-pine",
        opts = {
            disable_background = true,
            disable_float_background = true,
        },
        config = function()
            -- actually load the colorscheme
            vim.cmd.colorscheme "rose-pine"
            vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
            vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
        end,

    }

}
