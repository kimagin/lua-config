return {
  {
    {
      "akinsho/toggleterm.nvim",
      version = "*",
      opts = {--[[ things you want to change go here]]
        open_mapping = [[<c-\>]],
        shade_terminals = true,
        shading_factor = "0",
        direction = "horizontal",
        size = function(term)
          if term.direction == "horizontal" then
            return 15
          elseif term.direction == "vertical" then
            return vim.o.columns * 0.4
          end
        end,
        close_on_exit = true,
      },
    },
  },
}
