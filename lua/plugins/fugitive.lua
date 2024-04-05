return {
    "tpope/vim-fugitive",
    cmd = "Git",

    -- Keymaps
    vim.keymap.set('n', '<leader>gs', ":G status<CR>"),
    vim.keymap.set('n', '<leader>ga', ":G add %<CR>"),
    vim.keymap.set('n', '<leader>fg', ":G fetch<cr>"),
    vim.keymap.set('n', '<leader>gd', ":G diff<cr>"),
    vim.keymap.set('n', '<leader>bg', ":G blame<cr>"),
    vim.keymap.set('n', '<leader>gc', ":G commit<cr>"),
    vim.keymap.set('n', '<leader>gy', ":G push<cr>"),

}
