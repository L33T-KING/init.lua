vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
--remap nerdtree open to leader i
vim.keymap.set("n", "<leader>pt", vim.cmd.NERDTreeFocus)
vim.keymap.set("n", "<leader>pc", vim.cmd.NERDTreeToggle)
--remap floaterm open to leader t
--make it so the floaterm opens on the bottom of the screen
vim.keymap.set("n", "<leader>tt", vim.cmd.FloatermToggle)
vim.g.floaterm_position = "bottom"
