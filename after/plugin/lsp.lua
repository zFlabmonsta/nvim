local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp_zero.default_keymaps({buffer = bufnr, preserve_mappings = false})
    vim.opt.tabstop = 4
    vim.opt.softtabstop = 4
    vim.opt.shiftwidth = 4
end)

lsp_zero.configure('lua_ls', {
  cmd = { 'lua-language-server' },
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
        path = vim.split(package.path, ';'),
      },
      diagnostics = {
        globals = { 'vim' },
      },
    },
  },
})

lsp_zero.setup_servers({
    'lua_ls',
    'rust_analyzer',
    'gopls',
})

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {},
    handlers = {
        lsp_zero.default_setup,
    },
})


-- @Golang
local format_sync_grp = vim.api.nvim_create_augroup("GoImport", {})
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.go",
    callback = function()
        require('go.format').goimport()
    end,
    group = format_sync_grp,
})
