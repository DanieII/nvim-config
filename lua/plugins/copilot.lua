return {
    {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        build = ":Copilot auth",
        event = "InsertEnter",
        opts = {
            suggestion = {
                auto_trigger = true,
                keymap = {
                    accept = "<C-y>",
                },
            },
            filetypes = {
                markdown = true,
                help = true,
            },
        },
    },
    {
        "yetone/avante.nvim",
        event = "VeryLazy",
        version = false,
        build = "make",
        opts = {
            mode = "agentic",
            provider = "copilot",
        },
        dependencies = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            "nvim-telescope/telescope.nvim",
            "folke/snacks.nvim",
            "nvim-tree/nvim-web-devicons",
            {
                "HakonHarnes/img-clip.nvim",
                event = "VeryLazy",
                opts = {
                    default = {
                        embed_image_as_base64 = false,
                        prompt_for_file_name = false,
                        drag_and_drop = {
                            insert_mode = true,
                        },
                    },
                },
            },
        },
    }
}
