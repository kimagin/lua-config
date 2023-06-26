-- copy the file in this folder for lualine bar :
-- ~/.local/share/nvim/lazy/lualine.nvim/lua/lualine/themes/c-pine.lua

local colors = {
  nord1 = "#3B4252",
  nord3 = "#1f1f1f",
  nord5 = "#E5E9F0",
  nord6 = "#ECEFF4",
  nord7 = "#8FBCBB",
  nord8 = "#f6c279",
  nord13 = "#EBCB8B",
  nord14 = "#ebbcba",
  nord15 = "#202020",
  nord16 = "#9ccfd8",
  nord17 = "#c4a7e7",
}

return {
  normal = {
    a = { fg = colors.nord1, bg = colors.nord14, gui = "bold" },
    b = { fg = colors.nord5, bg = colors.nord15 },
    c = { fg = colors.nord14, bg = colors.nord3 },
  },
  insert = { a = { fg = colors.nord1, bg = colors.nord16, gui = "bold" } },
  visual = { a = { fg = colors.nord1, bg = colors.nord17, gui = "bold" } },
  replace = { a = { fg = colors.nord1, bg = colors.nord13, gui = "bold" } },
  inactive = {
    a = { fg = colors.nord1, bg = colors.nord8, gui = "bold" },
    b = { fg = colors.nord5, bg = colors.nord1 },
    c = { fg = colors.nord5, bg = colors.nord1 },
  },
}
