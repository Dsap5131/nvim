return {
    {
        "folke/trouble.nvim",
        opts = {},
        cmd = "Trouble",
        keys = {
            {
                "<leader>tt",
                "<cmd>Trouble diagnostics toggle<cr>",
                desc = "Diagnostics (Trouble)",
            },
            {
                "<leader>tf",
                "<cmd>Trouble diagnostics focus<cr>",
                desc = "Focus Diagnostics (Trouble)",
            },
        }
    }
}
