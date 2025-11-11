local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

-- Search & Navigation (Telescope)
keymap("n", "<Space>g", "<cmd>Telescope live_grep<CR>", opts)    -- Rg equivalent
keymap("n", "<Space>W", "<cmd>Telescope current_buffer_fuzzy_find<CR>", opts) -- Lines
keymap("n", "<Space>w", "<cmd>Telescope buffers<CR>", opts)      -- BLines (buffers list)
keymap("n", "<Space>f", "<cmd>Telescope find_files<CR>", opts)   -- Files
keymap("n", "<Space>b", "<cmd>Telescope buffers<CR>", opts)      -- Buffers (same as above)
keymap("n", "<Space>t", "<cmd>Telescope tags<CR>", opts)         -- Tags

-- File explorer (nvim-tree)
keymap("n", "<Space><Tab>", "<cmd>NvimTreeToggle<CR>", opts)

-- Zk Notes
keymap("n", "<Space>zn", "<cmd>ZkNotes<CR>", opts)

-- Terminal (toggleterm.nvim)
keymap("n", "T", "<cmd>ToggleTerm<CR>", opts)

-- If you still want Tagbar (but aerial is recommended)
-- keymap("n", "<Space>s", "<cmd>TagbarToggle<CR>", opts)

-- Optional: aerial toggle (recommended replacement for Tagbar)
-- keymap("n", "<Space>s", "<cmd>AerialToggle!<CR>", opts)

-- Optional: Use Telescope to fuzzy search symbols
vim.keymap.set("n", "<Space>s", "<cmd>Telescope aerial<CR>", { desc = "Search symbols with Telescope" })

