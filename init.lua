-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


require("plugins")
require("keymaps")
require("lazy").setup("plugins")

-- Set colorscheme after plugins are loaded
vim.cmd.colorscheme("dracula")

vim.opt.number = true           -- enable absolute line numbers
vim.opt.relativenumber = false  -- disable relative line numbers (set true for relative numbering)
vim.opt.cursorline = true       -- Highlight the current line
vim.opt.swapfile = false        -- Disable swap files if you prefer (optional)
-- vim.opt.backup = false          -- Disable backup files (optional)
vim.opt.termguicolors = true    -- Enable true color support in terminal
vim.opt.clipboard = "unnamedplus"  -- Use system clipboard for yank/paste
-- vim.opt.splitbelow = true       -- Horizontal splits go below
-- vim.opt.splitright = true       -- Vertical splits go to the right
