return {
    {
        "mfussenegger/nvim-lint",
        opts = {
            linters_by_ft = {
                python = { "pylint" },
            },
        },
        config = function(_,opts)
            local lint = require('lint')
            lint.linters_by_ft = opts.linters_by_ft
            vim.api.nvim_create_autocmd({
                'BufWritePost',
                'BufReadPost',
                'InsertLeave' }, {
                callback = function()
                    require("lint").try_lint()
                end
            })
        end,
    }
}
