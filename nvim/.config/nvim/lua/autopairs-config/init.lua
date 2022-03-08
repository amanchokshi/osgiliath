require('nvim-autopairs').setup({
  check_ts = true,
  ignored_next_char = "[%w%.]",         -- will ignore alphanumeric and `.` symbol
  enable_check_bracket_line = false     -- Don't add pairs if it already has a close pair in the same line
})
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')
cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done({  map_char = { tex = '' } }))
