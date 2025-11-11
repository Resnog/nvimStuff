-- lua/plugins/aerial.lua
return {
  "stevearc/aerial.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- optional icons
  opts = {
    backends = { "lsp", "treesitter", "markdown" },

    -- Auto-attach to LSPs
    auto_attach = true,

    -- Auto open when symbols are available
    -- open_automatic = true,

    -- Show line guides between symbols and the code
    show_guides = true,

    -- Add nice icons and highlight groups
    icons = {
      File = " ",
      Module = " ",
      Namespace = " ",
      Package = " ",
      Class = " ",
      Method = " ",
      Property = " ",
      Field = " ",
      Constructor = " ",
      Enum = " ",
      Interface = " ",
      Function = " ",
      Variable = " ",
      Constant = " ",
      String = " ",
      Number = " ",
      Boolean = " ",
      Array = " ",
      Object = " ",
      Key = " ",
      Null = " ",
      EnumMember = " ",
      Struct = " ",
      Event = " ",
      Operator = " ",
      TypeParameter = " ",
    },

    layout = {
      min_width = 28,
      max_width = { 40, 0.3 },
      default_direction = "right",
      placement = "edge",
      resize_to_content = true,
    },

    -- Key mappings inside Aerial window
    keymaps = {
      ["<CR>"] = "actions.jump",
      ["o"] = "actions.jump",
      ["<Esc>"] = "actions.close",
      ["q"] = "actions.close",
      ["<C-j>"] = "actions.down_and_scroll",
      ["<C-k>"] = "actions.up_and_scroll",
    },

    -- Floating window option (optional)
    float = {
      border = "rounded",
      relative = "win",
      override = function(conf)
        conf.row = 1
        conf.col = 1
        conf.width = 30
        return conf
      end,
    },
  },
  config = function(_, opts)
    require("aerial").setup(opts)
    require("telescope").load_extension("aerial") -- optional
  end,
}

