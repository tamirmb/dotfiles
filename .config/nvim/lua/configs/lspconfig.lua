require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
local lspconfig = require "lspconfig"

lspconfig.solargraph.setup {
  cmd = { "solargraph", "stdio" },
  filetypes = { "ruby" },
  root_dir = lspconfig.util.root_pattern("Gemfile", ".git", "."),
  settings = {
    solargraph = {
      diagnostics = true,
      completion = true,
      hover = true,
      autoformat = false,
      formatting = false,
    }
  }
}

