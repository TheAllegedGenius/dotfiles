vim.opt.syntax = "on" -- Syntax highlighting (implicit filetype on)
vim.opt.guicursor = "" -- Settings for cursor shape and blinking
vim.opt.scrolloff = 8 -- Minimum number of lines to keep above and below cursor
vim.opt.backspace = "indent,eol,start" -- Make backspace work as expected
vim.opt.dictionary = "/usr/share/dict/words" -- List of words for keyword completion

vim.opt.termguicolors = true -- Enable 24-bit color

vim.opt.number = true -- Print the line number in front of each line
vim.opt.numberwidth = 2 -- Number of columns used for the line number
vim.opt.wrap = false -- Long lines wrap and continue on the next line
vim.opt.signcolumn = "auto" -- When and how to display the sign column
vim.opt.colorcolumn = "80" -- Columns to highlight

vim.opt.tabstop = 4 -- The width of a tab character
vim.opt.shiftwidth = 4 -- Number of spaces to use for autoindent tabs
vim.opt.softtabstop = 4 -- Number of spaces the tab key inserts
vim.opt.expandtab = true -- Uses spaces when tab is inserted
vim.opt.autoindent = true -- Take indent for new line from previous line

vim.opt.hlsearch = false --Don't highlight search items by default
vim.opt.incsearch = true -- Highlight match while typing search pattern
vim.opt.ignorecase = true -- Ignore case when searching...
vim.opt.smartcase = true -- ...unless at least one characters is uppercase

vim.opt.wildmenu = true -- Use menu for command line completion 
vim.opt.wildmode = "longest:full,full" -- Complete longest common substring, then cycle through full matches
vim.opt.wildignorecase = true -- Ignore case when completing file names

vim.opt.showcmd = true -- Show command at bottom of the screen

vim.opt.updatetime = 1000 -- After this many milliseconds flush the swap file
