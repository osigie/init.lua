return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup {
      event_handlers = {
        {
          event = "file_opened",
          handler = function()
            -- auto close
            require("neo-tree.command").execute { action = "close" }
          end,
        },
      },
    }

    -- Toggle Neo-tree with <C-n> for filesystem view
    vim.keymap.set("n", "<C-n>", ":Neotree toggle filesystem reveal left<CR>", { noremap = true, silent = true })

    -- Open Neo-tree buffer view as a float window
    vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", { noremap = true, silent = true })
  end,
}
