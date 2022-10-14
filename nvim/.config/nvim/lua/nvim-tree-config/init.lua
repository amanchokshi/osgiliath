require'nvim-tree'.setup {
  renderer = {
      root_folder_modifier = ":t:r",
      icons = {
          glyphs = {
            default = '',
            symlink = '➜',
            git = {
                unstaged = "!",
                staged = "⁺",
                unmerged = "",
                renamed = "»",
                untracked = "*",
                deleted = "ˣ",
                ignored = "ᴼ"
              },
            folder = {
              arrow_open = "⬧",
              arrow_closed = "❯",
              default = "",
              open = "",
              empty = "",
              empty_open = "",
              symlink = "",
              symlink_open = ""
              }
          }
      }
  }
}
