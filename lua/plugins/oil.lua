return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {
    winoptions = {
      wrap = true,
    },
    default_file_explorer = true,
    view_options = {
      show_hidden = true,
      natural_order = "fast",
    },
  },
  keys = { { "<leader>e", "<cmd>Oil<cr>"} },
  -- keys = {vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })},
  -- Optional dependencies
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
  lazy = false,
  priority = 100
}
