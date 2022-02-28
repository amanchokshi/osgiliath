require("which-key").setup {
    window = {
        winblend = 0
    }
}

local wk = require("which-key")
local mappings = {
    q = {":q<cr>", "Quit"},
    w = {":w<cr>", "Save"},
    s = {":wq<cr>", "Save & Quit"},
    f = {":Telescope find_files<cr>", "Find File"},
    g = {":Telescope live_grep<cr>", "Live Grep"},
    r = {":Telescope oldfiles<cr>", "Recent Files"},
    t = {":NvimTreeToggle<cr>", "Tree"}
}
local opts = {prefix = '<leader>'}
wk.register(mappings, opts)

