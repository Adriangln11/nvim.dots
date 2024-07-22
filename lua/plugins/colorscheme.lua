return {

  -- {
  --   "sainnhe/sonokai",
  --   config = function()
  --     vim.g.sonokai_transparent_background = "1"
  --     vim.g.sonokai_enable_italic = "1"
  --     vim.g.sonokai_style = "andromeda"
  --     vim.cmd.colorscheme("sonokai")
  --   end,
  -- },

  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Ensure it loads first

    config = function()
      require("onedarkpro").setup({
        options = {
          transparency = true,
        },
      })
      vim.cmd("colorscheme onedark")
    end,
  },
}
