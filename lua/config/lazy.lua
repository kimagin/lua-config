local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

-- vim.cmd([[autocmd VimEnter * lua require('lazy').update()]])
-- vim.cmd([[autocmd VimEnter * lua require('lazy').sync()]])

vim.cmd("autocmd BufNewFile,BufRead *.astro set filetype=astro")
--disable registering
vim.cmd("nnoremap q <Nop>")
-- Edgy
vim.opt.laststatus = 5
vim.opt.splitkeep = "screen"
-- vim.opt.statusline = " %f %m %= %l:%c ♥ "
-- vim.cmd([[
--   hi Pmenu guibg=#ffffff
--   hi PmenuSel guibg=#a11c1e4
-- ]])

require("lazy").setup({
  spec = {
    -- add LazyVim and import its plugins
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    -- import any extras modules here
    { import = "lazyvim.plugins.extras.lang.typescript" },
    { import = "lazyvim.plugins.extras.lang.json" },
    { import = "lazyvim.plugins.extras.ui.mini-animate" },
    { import = "lazyvim.plugins.extras.formatting.prettier" },
    { import = "lazyvim.plugins.extras.lang.tailwind" },
    -- { import = "lazyvim.plugins.extras.util.mini-hipatterns" },
    -- { import = "lazyvim.plugins.extras.util.project" },
    -- import/override with your plugins
    { import = "plugins" },
  },
  defaults = {
    -- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
    -- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
    lazy = false,
    -- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
    -- have outdated releases, which may break your Neovim install.
    version = false, -- always use the latest git commit
    -- version = "*", -- try installing the latest stable version for plugins that support semver
  },
  -- install = { colorscheme = { "tokyonight", "habamax" } },
  checker = {
    enabled = true,
    concurrency = 1,
    notify = false,
  }, -- automatically check for plugin updates
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})

local bufferline = require("bufferline")
bufferline.setup({
  options = {
    style_preset = bufferline.style_preset.minimal,
    -- or you can combine these e.g.
    separator_style = "thin",
  },
})

require("rose-pine").setup({
  --- @usage 'auto'|'main'|'moon'|'dawn'
  variant = "auto",
  --- @usage 'main'|'moon'|'dawn'
  dark_variant = "main",
  -- bold_vert_split = false,
  dim_nc_background = false,
  disable_background = false,
  disable_float_background = true,
  disable_italics = false,

  --- @usage string hex value or named color from rosepinetheme.com/palette
  groups = {
    background = "#1f1f1f",
    background_nc = "#1f1f1f",
    panel = "#1f1f1f",
    panel_nc = "#222222",
    -- border = "darkslategray",
    border = "#262626",
    comment = "highlight_high",
    link = "iris",
    punctuation = "subtle",
    error = "love",
    hint = "iris",
    info = "foam",
    warn = "gold",

    headings = {
      h4 = "iris",
      h5 = "foam",
      h6 = "rose",
      h7 = "gold",
      h8 = "pine",
      h9 = "foam",
    },
    -- or set all headings at once
    -- headings = 'subtle'
  },

  -- Change specific vim highlight groups
  -- https://github.com/rose-pine/neovim/wiki/Recipes
  highlight_groups = {
    ColorColumn = { bg = "rose" },

    -- Blend colours against the "base" background
    CursorLine = { bg = "pine", blend = 25 },
    StatusLine = { fg = "love", bg = "iris", blend = 0 },
    StatusLineNC = { fg = "subtle", bg = "pine" },
    PmenuSel = { fg = "#f1f1f1", bg = "pine", blend = 60 },
    Pmenu = { fg = "#e0def4", bg = "pine", blend = 25 },
    PmenuSbar = { fg = "#e0def4", bg = "pine", blend = 25 },
    TelescopeSelectionCaret = { fg = "love" },
    TelescopeSelection = { fg = "#e0def4", bg = "pine", blend = 25 },
  },
})

vim.cmd("colorscheme rose-pine")
