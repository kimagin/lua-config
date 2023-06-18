return {
  {
    "nvim-tree/nvim-web-devicons",
    lazy = true,
    opts = {
      override_by_extension = {
        ["astro"] = {
          icon = "󰑣",
          color = "#e3492b",
          name = "Astro",
        },
      },
    },
  },
}
