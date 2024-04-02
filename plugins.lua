local plugins = {
    {
        "jose-elias-alvarez/null-ls.nvim",
        event = "VeryLazy",
        ft = { "go", "python", "rust" },
        opts = function()
            return require "custom.configs.null-ls"
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = { "bash", "c", "cmake", "cpp", "css",
                "fish", "forth", "go", "haskell", "html", "javascript",
                "lua", "make", "markdown", "python", "rust", "ruby" },
        },
    },
    {
        "yutaro-sakamoto/tree-sitter-cobol"
    },
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "clangd",
                "clang-format",
                "gopls",
                "gofumpt",
                "goimports-reviser",
                "golines",
                "rust-analyzer",
                "pyright",
                "mypy",
                "ruff",
                "black",
                "haskell-language-server",
                "lua-language-server",
            }
        }
    }
}

return plugins
