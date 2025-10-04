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
                    normal = "<C-r>",
                    insert = "<C-r>",
                },
                submit_prompt = {
                    insert = "<C-CR>",
                },
                yank_diff = {
                    normal = "gy",
                    register = "+",
                },
            },
            headers = {
                user = "" .. " ",
                assistant = "" .. " ",
            },
        },
        keys = {
            { "<leader>aa", ":CopilotChatToggle<CR>" },
            { "<leader>as", ":CopilotChatStop<CR>" },
            { "<leader>ar", ":CopilotChatReset<CR>" },
            { "<leader>am", ":CopilotChatModels<CR>" },
            { "<leader>ap", ":CopilotChatPrompts<CR>" },
            { "<leader>ac", ":CopilotChatCommit<CR>" },
            { "<leader>af", ":CopilotChatFix<CR>",      mode = "v" },
            { "<leader>ae", ":CopilotChatExplain<CR>",  mode = "v" },
            { "<leader>ao", ":CopilotChatOptimize<CR>", mode = "v" },
            { "<leader>at", ":CopilotChatTest<CR>",     mode = "v" },
        },
    },
}
