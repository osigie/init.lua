function ColorMyPencils(color)
  color = color or "darcula"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {

  {
    "doums/darcula",
    lazy = false, -- We want the colorscheme to load immediately
    priority = 1000, -- Ensure it loads before other plugins
    config = function()
      -- Enable termguicolors for full color support
      vim.opt.termguicolors = true

      -- Set the colorscheme
      vim.cmd [[colorscheme darcula]]

      -- If you're using lightline, set its colorscheme
      vim.g.lightline = { colorscheme = "darculaOriginal" }

      ColorMyPencils()
    end,
  },
}
