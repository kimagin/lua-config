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

map("i", "jj", "<ESC>", { desc = "Switch to normal Mode" })

map("n", "<leader>fs", "<cmd>:w<CR>", { desc = "Save current File" })
map("n", "<leader>q", "<cmd>:bd<CR>", { desc = "Quit current File" })
map("n", "<leader>Q", "<cmd>:q<CR>", { desc = "Quit current File" })

vim.api.nvim_set_keymap(
  "n",
  "<leader>fr",
  "<Cmd>lua require('telescope').extensions.frecency.frecency()<CR>",
  { noremap = true, silent = true }
)
