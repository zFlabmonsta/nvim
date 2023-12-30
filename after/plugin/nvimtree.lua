local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then return end

vim.keymap.set("n", "<leader>pv", ":NvimTreeToggle<CR>")

-- local keymap = vim.keymap -- for conciseness
-- keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- vim.opt.foldmethod = "expr"
-- vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
-- vim.opt.foldenable = false --                  " Disable folding at startup.

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

nvimtree.setup({
    disable_netrw = false,
    hijack_netrw = true,
    respect_buf_cwd = true,
    sync_root_with_cwd = true,
    view = {
        relativenumber = true,
        width = 40,
    },
    -- filters = {
        --   custom = { "^.git$" },
        -- },
        -- renderer = {
            --   indent_width = 1,
            -- },
})
