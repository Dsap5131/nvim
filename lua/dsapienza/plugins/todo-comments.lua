return {
    "folke/todo-comments.nvim",
    opts = {
    },
    config = function()
        local todo = require("todo-comments")
        todo.setup()

        vim.keymap.set(
            "n",
            "]t",
            function() todo.jump_next() end,
            { desc = "Next todo comment" }
        )
        vim.keymap.set(
            "n",
            "[t",
            function() todo.jump_prev() end,
            { desc = "Previous todo comment" }
        )
        vim.keymap.set(
            "n",
            "<leader>td",
            "<cmd>TodoTelescope<cr>"
        )
        vim.keymap.set(
            "n",
            "<leader>TD",
            "<cmd>TodoQuickFix<cr>"
        )
    end,
}
