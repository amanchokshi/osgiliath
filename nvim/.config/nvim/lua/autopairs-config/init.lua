require('nvim-autopairs').setup({
  check_ts = true,
  ignored_next_char = "[%w%.]",         -- will ignore alphanumeric and `.` symbol
  enable_check_bracket_line = false     -- Don't add pairs if it already has a close pair in the same line
})
