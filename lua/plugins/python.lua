return {
    "neovim/nvim-lspconfig",
    ft = "pyright",
    config = function()
        require("lspconfig").pyright.setup({
                settings = {
                    python = {
                        analysis = {
                            typeCheckingMode = "basic",
                        },
                    },
                },
        })
    end
}