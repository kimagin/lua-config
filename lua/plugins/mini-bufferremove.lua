return {
  {
    "echasnovski/mini.bufremove",
    version = "*",
  -- stylua: ignore
  keys = {
    { "<C-q>",nowait=true,noremap=false, function() require("mini.bufremove").delete(0, false) end, desc = "Delete Buffer" },
    { "<C-Q", function() require("mini.bufremove").delete(0, false) end, desc = "Delete Buffer (Force)" },
  },
  },
}
