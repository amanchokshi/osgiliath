vim.g.mapleader = ' '

local map = vim.api.nvim_set_keymap

-- Move between panes with ctrl <HJKL>
map('n', '<C-h>', '<C-w>h', {noremap = true, silent = false})
map('n', '<C-l>', '<C-w>l', {noremap = true, silent = false})
map('n', '<C-j>', '<C-w>j', {noremap = true, silent = false})
map('n', '<C-k>', '<C-w>k', {noremap = true, silent = false})

-- Open nvim-tree with <space>t
 -- map('n', '<leader>t', ':NvimTreeToggle<CR>', {noremap = true, silent = true})

-- In visual mode, angle brakets <, > indent lines
map('v', '<', '<gv', {noremap = true, silent = true})
map('v', '>', '>gv', {noremap = true, silent = true})
