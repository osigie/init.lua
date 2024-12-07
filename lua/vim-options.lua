vim.cmd "set expandtab"
vim.cmd "set tabstop=2"
vim.cmd "set softtabstop=2"
vim.cmd "set shiftwidth=2"
vim.cmd "set wrap"
vim.cmd "set linebreak"
vim.g.mapleader = " "
vim.g.background = "light"
vim.keymap.set("i", "jj", "<ESC>", { silent = true })

vim.opt.swapfile = false
vim.opt.scrolloff = 8
vim.opt.relativenumber = true

-- Navigate vim panes better
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- Preserve clipboard when pasting in visual mode
vim.keymap.set("x", "<leader>p", '"_dP')

-- Yank to system clipboard
vim.keymap.set("n", "<leader>y", '"+y') -- Normal mode
vim.keymap.set("v", "<leader>y", '"+y') -- Visual mode
vim.keymap.set("n", "<leader>Y", '"+Y') -- Yank line to system clipboard

-- Delete without affecting registers
vim.keymap.set("n", "<leader>d", '"_d') -- Normal mode
vim.keymap.set("v", "<leader>d", '"_d') -- Visual mode

vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
vim.wo.number = true
