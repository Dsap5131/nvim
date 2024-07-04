return {
    {
        'nvimdev/dashboard-nvim',
        lazy = false,
        opts = function()
            local logo = [[
                 ██╗      █████╗ ███████╗██╗   ██╗██╗   ██╗██╗███╗   ███╗          Z
                 ██║     ██╔══██╗╚══███╔╝╚██╗ ██╔╝██║   ██║██║████╗ ████║      Z    
                 ██║     ███████║  ███╔╝  ╚████╔╝ ██║   ██║██║██╔████╔██║   z       
                 ██║     ██╔══██║ ███╔╝    ╚██╔╝  ╚██╗ ██╔╝██║██║╚██╔╝██║ z         
                 ███████╗██║  ██║███████╗   ██║    ╚████╔╝ ██║██║ ╚═╝ ██║           
                 ╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝     ╚═══╝  ╚═╝╚═╝     ╚═╝           
            ]]
            logo = string.rep("\n", 8) .. logo .. "\n\n"

            local opts = {
                theme = "hyper",
                config = {
                    header = vim.split(logo, "\n"),
                    packages = { enable = false },
                    project = {
                        enable = true,
                        limit = 8,
                        icon = DashboardProjectIcon,
                        label = 'Recent Projects',
                        action = 'Telescope find_files cwd='
                    },
                    mru = {
                        limit = 10,
                        icon = DashboardMruIcon,
                        label = 'Recent Files',
                        cwd_only = false
                    },
                    shortcut = {
                        {
                            action = 'Telescope find_files',
                            desc = " Find Files",
                            icon = " ",
                            key = "f"
                        },
                        {
                            action = "Lazy",
                            desc = " Lazy",
                            icon = "󰒲 ",
                            key = "l"
                        },
                        {
                            action = function()
                                vim.api.nvim_input("<cmd>qa<cr>") end,
                            desc = " Quit",
                            icon = " ",
                            key = "q"
                        },
                    },
                    footer = function()
                        local stats = require("lazy").stats()
                        local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
                        return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. "plugins in " .. ms .. "ms" }
                    end,
                },
                hide = { statusline = false },
            }
            return opts
        end,
    }
}
