-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

--Insert Mode
map("i", "jj", "<ESC>", { desc = "Switch to normal Mode" })

-- Normal Mode
map("n", "<C-a>", "ggVG", { desc = "Switch to normal Mode" })
map("n", "ss", "<cmd>:w<CR>", { desc = "Save current File" })

-- Move Tabs
map("n", "<Tab>", "<cmd>:bn<CR>", { desc = "Move Tabs to right" })
map("n", "<S-Tab>", "<cmd>:bp<CR>", { desc = "Move Tabs to left" })

vim.api.nvim_set_keymap("n", "<leader>q", "<Cmd>:bd<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "qq", "<Cmd>:wqa!<CR>", { noremap = true, silent = true })

-- Telescope
vim.api.nvim_set_keymap("n", "<leader>fp", "<Cmd>:Telescope projects<CR>", { noremap = true, silent = true })
