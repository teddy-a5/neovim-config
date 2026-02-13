return {
    "neovim/nvim-lspconfig",
    ft = "python",
    config = function()
        vim.lsp.config("pyright", {
            settings = {
                python = {
                    analysis = {
                        typeCheckingMode = "basic",
                    },
                },
            },
        })

        vim.lsp.enable("pyright")
    end
}