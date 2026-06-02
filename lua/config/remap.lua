vim.g.mapleader = " "

vim.cmd("cnoreabbrev fz FzfLua")

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open default explorer" })
vim.keymap.set("n", "<leader>w", ":w<cr>", { desc = "Save file" })
vim.keymap.set("n", "<leader>bd", "<cmd>bd!<cr>", { desc = "Close buffer"})
vim.keymap.set("n", "<leader>qa", "<cmd>qa<cr>", { desc = "Quit all" })
vim.keymap.set('n', '<leader>qq', ':cclose<CR>', { desc = 'Close Quickfix' })

-- Move to window using the <ctrl> hjkl keys
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })

vim.keymap.set("n", "<A-j>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
vim.keymap.set("n", "<A-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })

-- Paste below `pb` and paste above `pa`
vim.keymap.set("n", "<leader>pb", ":put +<CR>", { silent = true, desc="Paste below"})
vim.keymap.set("n", "<leader>pa", ":put! +<CR>", { silent = true, desc="Paste above"})

vim.keymap.set("n", "<leader>o", ":put =''<CR>", { silent = true, desc="Insert empty line below"})
vim.keymap.set("n", "<leader>O", ":put! =''<CR>", { silent = true, desc="Insert empty line above"})

