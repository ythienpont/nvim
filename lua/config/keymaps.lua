vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>')
vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)
vim.keymap.set('n', '<leader>f', ":Pick files<CR>")
vim.keymap.set('n', 'ca', vim.lsp.buf.code_action)

-- Go to next tab
vim.keymap.set("n", "<Tab>", ":tabnext<CR>", { silent = true })

-- Go to previous tab
vim.keymap.set("n", "<S-Tab>", ":tabprevious<CR>", { silent = true })
