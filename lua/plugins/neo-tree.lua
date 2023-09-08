return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_gitignore = true,
        hide_by_name = {},
        never_show = {
          ".git",
          ".DS_Store",
          "thumbs.db",
        },
      },
    },
    window = {
      position = "right",
    },
  },
}
