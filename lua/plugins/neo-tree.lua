return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          -- hide_dotfiles = false,
          hide_by_name = {
            "node_modules",
          },
          always_show = { -- remains visible even if other settings would normally hide it
            ".env",
          },
        },
      },
    },
  },
}
