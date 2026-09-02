-- Set leader to <Space>
vim.g.mapleader = " "

-- Open Netrw (file browser)
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move selected lines up/down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Join lines with cursor preserved
vim.keymap.set("n", "J", "mzJ`z")

-- Move up/down with cursor centered
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- Center on next/previous search result
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Replace word under cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Create new line above/below and stay in normal mode
vim.keymap.set("n", "<S-CR>", "mzO<Esc>`z")
vim.keymap.set("n", "<CR>", "mzo<Esc>`z")

