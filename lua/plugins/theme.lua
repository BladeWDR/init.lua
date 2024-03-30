return {

    --start colorscheme when loading Neovim.
    {
        "rose-pine/neovim",
        lazy = false, -- ensure that this is loaded at startup.
        priority = 1000,
        name = "rose-pine",
        opts = {
            enable = {
                migrations = true,
            },
            styles = {
                transparency = false,
            },
            highlight_groups = {
                Normal = { bg = "none" },
                NormalFloat = { bg = "none" },
            }
        },
    }

}
