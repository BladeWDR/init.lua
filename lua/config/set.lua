-- vim.opt.guicursor = ""

-- vim.diagnostic.config({
--     virtual_text = false, -- Turn off inline diagnostics
--     float = {
--         source = "always",
--         update_in_insert = true,
--         severity_sort = true,
--     },
-- })
--
  -- vim.o.updatetime = 250
  -- vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false, max_width=80})]]

vim.opt.nu = true
vim.opt.relativenumber = true

-- Set the listchars options 
vim.o.listchars = 'trail:-,nbsp:+,tab:▏ ,leadmultispace:▏ ,eol:↲'
vim.opt.list = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false
vim.opt.cursorline = true

--vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.laststatus = 2

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 50

vim.opt.fileformat = unix

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
