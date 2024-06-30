return {
    { 
        "iamcco/markdown-preview.nvim",
        cmd = {
            "MarkdownPreviewToggle",
            "MarkdownPreview",
            "MarkdownPreviewStop"
        },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
        config = function()
            vim.keymap.set("n", "<leader>mp", "<Plug>MarkdownPreview")
            vim.keymap.set("n", "<leader>mps", "<Plug>MarkdownPreviewStop")
        end
    }
}
