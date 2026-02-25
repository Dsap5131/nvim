return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        opts = {
            indent = { enable = true },
            highlight = { enable = true },
            auto_install = true,
            sync_install = false,
            ensure_installed = {
                "python","lua","rust","markdown"
            }
        },
        config = function(_, opts)
            local TS = require("nvim-treesitter")

            TS.setup(opts)
        end
    }
}
