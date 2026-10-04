vim.o.number = true
vim.opt.termguicolors = false

vim.opt.swapfile = true          
vim.opt.directory = os.getenv("HOME") .. "/.local/state/nvim/swap//"
 
vim.opt.undofile = true            
vim.opt.undolevels = 1000          
vim.opt.undoreload = 10000         

local undodir = os.getenv("HOME") .. "/.local/state/nvim/undo"
if vim.fn.isdirectory(undodir) == 0 then
    vim.fn.mkdir(undodir, "p")
end
vim.opt.undodir = undodir

vim.opt.clipboard = "unnamedplus"

vim.keymap.set({"n", "v"}, "d", '"_d', { noremap = true })
vim.keymap.set({"n", "v"}, "x", '"_x', { noremap = true })
vim.keymap.set({"n", "v"}, "c", '"_c', { noremap = true })
