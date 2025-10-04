return {
    {
        "zbirenbaum/copilot.lua",
        opts = {
            suggestion = {
                auto_trigger = true,
                keymap = {
                    accept = "<C-y>",
                    accept_word = "<C-l>",
                },
            },
            filetypes = {
                markdown = true,
                help = true,
            },
        },
    },
    {
        "CopilotC-Nvim/CopilotChat.nvim",
        dependencies = {
            { "nvim-lua/plenary.nvim", branch = "master" },
        },
        build = "make tiktoken",
        opts = {
            mappings = {
                reset = {
                    normal = "<C-x>",
                    insert = "<C-x>",
                },
                submit_prompt = {
                    normal = "<CR>",
                    insert = "<C-CR>",
                },
                yank_diff = {
                    normal = "gy",
                    register = "+",
                },
                complete = {
                    insert = "<Tab>",
                },
            },
            headers = {
                user = "" .. " ",
                assistant = "" .. " ",
            },
        },
        keys = {
            { "<leader>aa", ":CopilotChatToggle<CR>" },
            { "<leader>ar", ":CopilotChatReset<CR>" },
            { "<leader>as", ":CopilotChatStop<CR>" },
            { "<leader>am", ":CopilotChatModels<CR>" },
            { "<leader>ap", ":CopilotChatPrompts<CR>" },
            { "<leader>ae", ":CopilotChatExplain<CR>",  mode = "v" },
            { "<leader>ao", ":CopilotChatOptimize<CR>", mode = "v" },
            { "<leader>at", ":CopilotChatTest<CR>",     mode = "v" },
            { "<leader>ar", ":CopilotChatReview<CR>",   mode = "v" },
            { "<leader>ac", ":CopilotChatCommit<CR>",   mode = "v" },
        },
    },
}
