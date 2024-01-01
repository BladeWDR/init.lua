return {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
      dependencies = { 
	      'nvim-lua/plenary.nvim',
	      'sharkdp/fd',
      },
    
  config = function()
    local builtin = require("telescope.builtin")
-- KEYMAPS HERE
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
    vim.keymap.set('n', 'C-p', builtin.git_files, {})
end,
}
