require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "solargraph", "ts_ls", "tailwindcss" }

vim.lsp.config.ts_ls = {
  filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" }
}

vim.lsp.config.html = {}
vim.lsp.config.cssls = {}
vim.lsp.config.solargraph = {}

vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
