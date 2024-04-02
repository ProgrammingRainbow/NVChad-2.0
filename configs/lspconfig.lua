local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local util = require("lspconfig/util")

lspconfig.pyright.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { "python" },
})

lspconfig.hls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { "haskell" },
})

lspconfig.rust_analyzer.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { "rust" },
    rootdir = util.root_pattern("Cargo.toml"),
    settings = {
        rust_analyzer = {
            cargo = {
                allFeatures = true,
            },
        },
    },
}

lspconfig.gopls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    cmd = { "gopls" },
    filetypes = { "go", "gomod", "gowork", "gotmpl" },
    rootdir = util.root_pattern("go.work", "go.mod", ".git"),
    settings = {
        gopls = {
            completeUnimported = true,
            usePlaceholders = true,
            analyses = {
                unusedparams = true,
            },
        },
    },
}

lspconfig.clangd.setup {
    -- init_options = {
    --     fallbackFlags = { '--std=c++20' }
    -- },
    on_attach = function(client, bufnr)
        client.server_capabilities.signatureHelpProvider = false
        client.server_capabilities.documentFormattingProvider = false
        client.server_capabilities.documentRangeFormattingProvider = false
        on_attach(client, bufnr)
    end,
    capabilities = capabilities,
}

lspconfig.lua_ls.setup {
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim", "love" },
            },
        },
    },
}
