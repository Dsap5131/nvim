return {
    {
        "kdheepak/lazygit.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        config = function()
            vim.keymap.set(
                "n", "<leader>LG", "<cmd>LazyGit<cr>", { desc = "LazyGit" })
        end,
    }
}
