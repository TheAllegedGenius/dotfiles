return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },

    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = {
                "lua_ls",
                "clangd",
                "jdtls",
                "texlab"
            },
            handlers = {
                -- default handler (optional)
                function (server_name)
                    require("lspconfig")[server_name].setup {}
                end,
                -- Next, you can provide targeted overrides for specific servers.
                ["lua_ls"] = function ()
                    local lspconfig = require("lspconfig")
                    lspconfig.lua_ls.setup {
                        settings = {
                            Lua = {
                                diagnostics = {
                                    globals = { "vim" }
                                }
                            }
                        }
                    }
                end,
            }
        })
    end

}
