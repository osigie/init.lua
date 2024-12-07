return {
  {
    "hedyhli/outline.nvim",
    lazy = true, -- Load the plugin lazily
    cmd = { "SymbolsOutline" }, -- Command to load the plugin
    keys = {
      { "<leader>o", "<cmd>Outline<CR>", desc = "Toggle outline" },
    },
    config = function()
      require("outline").setup {
        highlight_hovered_item = true,
        show_guides = true,
        auto_preview = false,
        position = "right",
        relative_width = true,
        width = 25,
        auto_close = false,
        show_numbers = false,
        show_relative_numbers = false,
        preview_bg_highlight = "Pmenu",
        lsp_blacklist = {},
        mode = "lsp", -- Use LSP for symbols
        filter_kind = {
          "Class",
          "Function",
          "Method",
          "Enum",
          "Interface",
          "Module",
          "Struct",
        },
      }
    end,
  },
}
