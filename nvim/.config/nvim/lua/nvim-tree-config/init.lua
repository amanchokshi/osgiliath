vim.g.nvim_tree_icons = {
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

vim.g.nvim_tree_root_folder_modifier = ":t:r"

require'nvim-tree'.setup {
  auto_close = true
}
