return {
  "akinsho/bufferline.nvim",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    require("bufferline").setup({
      options = {
        numbers = "none",                -- no buffer numbers
        close_command = "bdelete! %d",  -- close buffer command
        right_mouse_command = "bdelete! %d",
        left_mouse_command = "buffer %d",
        middle_mouse_command = nil,

        indicator = {
          icon = "▎",                   -- thin vertical bar
          style = "icon",
        },

        buffer_close_icon = "",
        modified_icon = "●",
        close_icon = "",
        left_trunc_marker = "",
        right_trunc_marker = "",

        max_name_length = 30,
        max_prefix_length = 15,         -- prefix used when a buffer is de-duplicated
        tab_size = 21,
        diagnostics = "nvim_lsp",       -- show LSP diagnostics
        diagnostics_update_in_insert = false,
        offsets = {
          {
            filetype = "NvimTree",
            text = "Explorer",
            highlight = "Directory",
            text_align = "left",
          },
        },
        show_buffer_icons = true,       -- filetype icons
        show_buffer_close_icons = true,
        show_close_icon = false,
        show_tab_indicators = true,
        persist_buffer_sort = true,     -- persist custom sorting

        separator_style = "thin",       -- other options: "thick", "slant"
        enforce_regular_tabs = false,
        always_show_bufferline = true,
        sort_by = "insert_after_current",
      },
      highlights = {
        fill = {
          guifg = { attribute = "fg", highlight = "TabLine" },
          guibg = { attribute = "bg", highlight = "TabLine" },
        },
        background = {
          guifg = { attribute = "fg", highlight = "TabLine" },
          guibg = { attribute = "bg", highlight = "TabLine" },
        },
        buffer_selected = {
          guifg = { attribute = "fg", highlight = "Normal" },
          guibg = { attribute = "bg", highlight = "Normal" },
          gui = "bold",
        },
        separator = {
          guifg = { attribute = "bg", highlight = "TabLine" },
          guibg = { attribute = "bg", highlight = "TabLine" },
        },
        separator_selected = {
          guifg = { attribute = "fg", highlight = "Special" },
          guibg = { attribute = "bg", highlight = "Normal" },
        },
        indicator_selected = {
          guifg = { attribute = "fg", highlight = "LspDiagnosticsDefaultHint" },
          guibg = { attribute = "bg", highlight = "Normal" },
        },
      },
    })
  end,
}

