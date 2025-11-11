-- lua/plugins/blink.lua

return {
  "Saghen/blink.nvim",
  event = "VeryLazy",
  config = function()
    require("blink").setup({
      on = true,
      blink_interval = 150,  -- in milliseconds
      style = "standout",    -- other options: "reverse", "underline", etc.
      name = "blink",
      highlight = { "Cursor" },
      modes = { "n", "v", "i" }, -- Normal, Visual, Insert modes
    })
  end,
}

