return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {
    indent = {
      char = "│", -- Solid vertical line as the indent character
      tab_char = "│", -- Ensure tabs also use the same character
    },
    -- Additional settings to control appearance
    scope = {
      enabled = true, -- Highlight current scope (optional)
      show_start = false,
      show_end = false,
    },
  },
}
