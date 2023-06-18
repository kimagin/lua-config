return {
  "nvim-telescope/telescope-file-browser.nvim",
  keys = {
    {
      "<leader>fo",
      -- "<cmd>Telescope file_browser path=%:p:h=%:p:h<cr>",
      "<cmd>Telescope file_browser path=~/linux-coding-environment/Projects<cr>",
      { noremap = true },
      desc = "Browse Projects",
    },
  },
  config = function()
    require("telescope").setup({
      extensions = {
        file_browser = {
          -- path
          -- cwd
          cwd_to_path = false,
          grouped = false,
          files = true,
          add_dirs = true,
          depth = 1,
          auto_depth = false,
          select_buffer = false,
          theme = "dropdown",
          hidden = { file_browser = false, folder_browser = false },
          -- respect_gitignore
          -- browse_files
          -- browse_folders
          hide_parent_dir = false,
          collapse_dirs = false,
          prompt_path = false,
          quiet = false,
          dir_icon = "",
          dir_icon_hl = "Default",
          hijack_netrw = false,
          use_fd = true,
          git_status = true,
        },
      },
    })
    require("telescope").load_extension("file_browser")
  end,
}
