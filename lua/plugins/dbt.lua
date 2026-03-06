return {
    "3fonov/dbt-nvim",
    config=true,
    keys = {
        {'<leader>dc', '<cmd>DbtCompile<CR>', desc = 'dbt compile' },
        {'<leader>dy', '<cmd>DbtModelYaml<CR>', desc = 'dbt model yaml' },
        {'<leader>dr', '<cmd>DbtRun<CR>', desc = 'dbt run' },
        {'<leader>df', '<cmd>DbtRunFull<CR>', desc = 'dbt run full' },
        {'<leader>dt', '<cmd>DbtTest<CR>', desc = 'dbt test' },
        {'<leader>d+', '<cmd>DbtListUpstreamModels<CR>',desc='dbt upstream'},
        {'<leader>d-', '<cmd>DbtListDownstreamModels<CR>',desc='dbt downstream'}
    }
}
