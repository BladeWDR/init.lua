-- vim.opt.guicursor = ""

vim.diagnostic.config({
    virtual_text = false, --turn off inline diagnostics as it was unreadable with LSP.
})

vim.cmd('autocmd CursorHold * lua vim.diagnostic.open_float()')
vim.o.updatetime = 300

vim.opt.nu = true
vim.opt.relativenumber = true


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
