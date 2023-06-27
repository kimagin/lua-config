-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  virtual_text = false,
})

vim.diagnostic.config({ virtual_text = false })

local opt = vim.opt

--TODO: Check for more information on vim options

opt.pumblend = 0 -- Popup blend
opt.termguicolors = true
opt.background = "dark"
