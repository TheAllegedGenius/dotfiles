vim.o.syntax = "on" -- Syntax highlighting (implicit filetype on)
vim.o.guicursor = "" -- Settings for cursor shape and blinking
vim.o.scrolloff = 8 -- Minimum number of lines to keep above and below cursor
vim.o.backspace = "indent,eol,start" -- Make backspace work as expected
vim.o.dictionary = "/usr/share/dict/words" -- List of words for keyword completion

vim.o.termguicolors = true -- Enable 24-bit color

vim.o.number = true -- Print the line number in front of each line
vim.o.numberwidth = 2 -- Number of columns used for the line number
vim.o.relativenumber = true -- Use relative line numbers
vim.o.cursorline = true -- Highlight current line
vim.o.cursorlineopt = "number" -- Only highlight line number
vim.o.wrap = false -- Long lines wrap and continue on the next line
vim.o.signcolumn = "auto" -- When and how to display the sign column
vim.o.colorcolumn = "80" -- Columns to highlight

vim.o.tabstop = 4 -- The width of a tab character
vim.o.shiftwidth = 4 -- Number of spaces to use for autoindent tabs
vim.o.softtabstop = 4 -- Number of spaces the tab key inserts
vim.o.expandtab = true -- Uses spaces when tab is inserted
vim.o.autoindent = true -- Take indent for new line from previous line

vim.o.hlsearch = false --Don't highlight search items by default
vim.o.incsearch = true -- Highlight match while typing search pattern
vim.o.ignorecase = true -- Ignore case when searching...
vim.o.smartcase = true -- ...unless at least one characters is uppercase

vim.o.wildmenu = true -- Use menu for command line completion 
vim.o.wildmode = "longest:full,full" -- Complete longest common substring, then cycle through full matches
vim.o.wildignorecase = true -- Ignore case when completing file names

vim.o.showcmd = true -- Show command at bottom of the screen

vim.o.updatetime = 1000 -- After this many milliseconds flush the swap file
