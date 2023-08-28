vim.o.clipboard = "unnamedplus"
vim.opt.number = true
vim.opt.relativenumber = true
-- added from craftzdog/dotfiles
vim.opt.title = true -- show the title in the window titlebar
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.breakindent = true
vim.opt.titlestring = "%<%F%=%l/%L - nvim" -- what the titlebar shows
vim.opt.encoding = "utf-8" -- the encoding written to a file
--end added from craftzdog/dotfiles

vim.opt.termguicolors = true
vim.keymap.set("i", '<Tab>', function()
  if require("copilot.suggestion").is_visible() then
    require("copilot.suggestion").accept()
  else
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, false, true), "n", false)
  end
end, {
  silent = true,
})

