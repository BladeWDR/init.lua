-- open the netrw panel.
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- freely move text up and down.
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep cursor in the middle during jump or search operations.
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- copy / paste to system clipboard.
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({"n", "v"}, "<leader>p", [["+p]])
vim.keymap.set("n", "<leader>P", [["+P]])

-- remap ctrl+c to the escape key
vim.keymap.set({"i", "v"}, "<C-c>", "<Esc>")

-- do search and replace for word the cursor is on in normal mode.
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- enclose selection in double quotes.
vim.keymap.set("n", "<leader>q", [[:s/\<<C-r><C-w>\>/"<C-r><C-w>"<CR>]])

-- set the current file type to yaml.ansible
vim.keymap.set("n", "<leader>ya", "<cmd>set ft=yaml.ansible<CR>")

-- make current file executable (only works in Linux!)
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- open UndoTree.
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- change the working directory to the current file.
vim.keymap.set("n", "<leader>cd", ":cd %:p:h<CR>:pwd<CR>")

-- toggle wrap / nowrap
vim.keymap.set("n", "<leader>W", ":set wrap!<CR>")

-- source luasnips.
vim.keymap.set("n", "<leader>v", ":source ~/.config/nvim/lua/plugins/completions.lua<CR>")

-- add remap to set clipboard=unnamedplus
vim.keymap.set("n", "<leader>vv", ":set clipboard=unnamedplus<CR>")

-- enable spellcheck
vim.keymap.set("n", "<leader>z", ":setlocal spell spelllang=en_us<CR>")
