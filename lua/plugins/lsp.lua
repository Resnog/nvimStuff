-- lua/plugins/lsp.lua
-- lua/plugins/lsp.lua

return {
  -- LSP Support
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "hrsh7th/nvim-cmp",
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local util = require("lspconfig.util")

      -- Set up global keymaps via LspAttach
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local opts = { buffer = args.buf, noremap = true, silent = true }
          local keymap = vim.keymap.set
          keymap("n", "gd", vim.lsp.buf.definition, opts)
          keymap("n", "gi", vim.lsp.buf.implementation, opts)
          keymap("n", "<leader>rn", vim.lsp.buf.rename, opts)
          keymap("n", "<leader>ca", vim.lsp.buf.code_action, opts)
        end,
      })

      -- Automatically start clangd using vim.lsp.start
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "c", "cpp" },
        callback = function()
          vim.lsp.start({
            name = "clangd",
            cmd = {
              "clangd",
              "--compile-commands-dir=.",
              "--query-driver=/usr/bin/clang*,/usr/bin/gcc*",
              "--header-insertion=never",
            },
            root_dir = util.root_pattern("compile_commands.json", ".git"),
            capabilities = capabilities,
          })
        end,
      })
    end,
  },

  -- Autocompletion
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
    },
    config = function()
      local cmp = require("cmp")
      cmp.setup({
        snippet = {
          expand = function(_) end, -- You can integrate luasnip here
        },
        mapping = cmp.mapping.preset.insert({
          ["<Tab>"] = cmp.mapping.select_next_item(),
          ["<S-Tab>"] = cmp.mapping.select_prev_item(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
        sources = {
          { name = "nvim_lsp" },
          { name = "buffer" },
        },
      })
    end,
  },
}

