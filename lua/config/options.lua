local cmd = vim.cmd
local opt = vim.opt

local g = vim.g
local s = vim.s

opt.clipboard = "unnamedplus" -- allow neovim to access the system clipboard
opt.fileencoding = "utf-8"    -- the encoding written to a file
opt.encoding = "utf-8"        -- the encoding
opt.matchpairs = { "(:)", "{:}", "[:]", "<:>" }
opt.syntax = "enable"

-- indentation
local indent = 2

opt.autoindent = true    -- auto indentation
opt.expandtab = true     -- convert tabs to spaces
opt.shiftwidth = indent  -- the number of spaces inserted for each indentation
opt.smartindent = true   -- make indenting smarter
opt.softtabstop = indent -- when hitting <BS>, pretend like a tab is removed, even if spaces
opt.tabstop = indent     -- insert `indent` spaces for a tab
opt.shiftround = true    -- use multiple of shiftwidth when indenting with "<" and ">"

-- search
opt.hlsearch = true   -- highlight all matches on previous search pattern
opt.ignorecase = true -- ignore case in search patterns
opt.smartcase = true  -- smart case

-- ui
opt.cursorline = true -- highlight the current line
opt.laststatus = 2    -- only the last window will always have a status line
opt.lazyredraw = true -- don"t update the display while executing macros
opt.list = true
opt.listchars = {
  tab = "┊ ",
  trail = "·",
  extends = "»",
  precedes = "«",
  nbsp = "×"
}

-- persistent undo
-- Don't forget to create folder $HOME/.local/share/nvim/undo
--local undodir = vim.fn.stdpath("data") .. "/undo"
opt.undofile = true -- enable persistent undo
opt.undolevels = 1000
opt.undoreload = 10000


vim.o.rnu = true
vim.o.nu = true
vim.o.wrap = false
vim.o.swapfile = false
vim.o.termguicolors = true
vim.o.signcolumn = "yes"
vim.o.winborder = "rounded"
vim.o.scrolloff = 4
vim.o.foldmethod = "syntax"
vim.opt.cmdheight = 0

vim.cmd [[colorscheme tokyonight-night]]

vim.cmd([[
  hi Normal guibg=NONE ctermbg=NONE
  hi NormalNC guibg=NONE ctermbg=NONE
  hi EndOfBuffer guibg=NONE ctermbg=NONE
  hi SignColumn guibg=NONE ctermbg=NONE
  hi VertSplit guibg=NONE ctermbg=NONE
]])
