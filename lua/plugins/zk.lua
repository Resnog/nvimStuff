-- lua/plugins/zk.lua

return {
  {
    "zk-org/zk-nvim",
    lazy = false, -- make sure it's loaded at startup so commands are available
    dependencies = {
      "nvim-telescope/telescope.nvim", -- optional if you're using telescope picker
    },
    config = function()
      require("zk").setup({
        picker = "telescope", -- can be "fzf", "select", etc.
        lsp = {
          config = {
            cmd = { "zk", "lsp" },
            name = "zk",
          },
          auto_attach = {
            enabled = true,
            filetypes = { "markdown" },
          },
        },
      })
    end,
  }
}

