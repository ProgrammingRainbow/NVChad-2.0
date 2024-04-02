local opt = vim.opt

-- Indenting
opt.expandtab = true
opt.shiftwidth = 4
opt.smartindent = true
opt.tabstop = 4
opt.softtabstop = 4

vim.cmd [[ au BufRead,BufNewFile *.CBL set filetype=cobol ]]
