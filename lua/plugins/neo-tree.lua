return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      popup_border_style = "rounded",
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
      default_component_configs = {
        icon = {
          folder_empty = "󰉖",
        },
      },
      window = {
        width = "28",
      },
      follow_current_file = false,
      use_libuv_file_watcher = true,
    },
  },
}
