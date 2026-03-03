return {
    -- lazy.nvim
    {
        "olimorris/codecompanion.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
        },
        opts = {
            interactions = {
                chat = {
                    adapter = "anthropic",
                },
                inline = {
                    adapter = "anthropic",
                },
                cmd = {
                    adapter = "anthropic",
                },
            },
            opts = {
                log_level = "DEBUG", -- or "TRACE"
            },
            adapters = {
                http = {
                    anthropic = function()
                        return require("codecompanion.adapters").extend(
                            "anthropic",
                            {
                                env = {
                                    api_key = "ANTHROPIC_API_KEY",
                                },
                            })
                    end,
                },
            },
        }
    }
}
