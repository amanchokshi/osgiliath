vim.g.dashboard_default_executive = 'telescope'
vim.g.dashboard_preview_command = '/bin/cat'
vim.g.dashboard_preview_pipeline = 'lolcat'
vim.g.dashboard_preview_file = '~/.osgiliath/nvim/.config/nvim/lua/dashboard-config/sat.cat'
vim.g.dashboard_preview_file_height = 21
vim.g.dashboard_preview_file_width = 100
vim.g.dashboard_custom_section = {
  a = {description = {'  Find File          '}, command = 'Telescope find_files'},
  d = {description = {'  Search Text        '}, command = 'Telescope live_grep'},
  b = {description = {'  Recent Files       '}, command = 'Telescope oldfiles'},
  -- e = {description = {'  Config             '}, command = 'edit ~/.config/nvim/init.lua'}
}

-- Programmer Quote `https://github.com/Th3Whit3Wolf/pquote`
local quote = vim.api.nvim_call_function('systemlist', {'pq'})
vim.g.dashboard_custom_footer = quote
