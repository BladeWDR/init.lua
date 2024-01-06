return {

    --start colorscheme when loading Neovim.
    {
        "rose-pine/neovim",
        lazy = false, -- ensure that this is loaded at startup.
        priority = 1000,
        name = "rose-pine",
        config = function()
            -- actually load the colorscheme.
            vim.cmd([[colorscheme rose-pine]])
        end,

    }

}
-- return {
--     -- start colorscheme when loading Neovim.
--     {
--         "navarasu/onedark.nvim",
--         lazy = false, -- ensure that this is loaded at startup.
--         priority = 1000,
--         config = function()
--             -- actually load the colorscheme.
--             vim.cmd([[colorscheme onedark]])
--         end,
--     }
--
-- }
