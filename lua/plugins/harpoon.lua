return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    opts = {
        menu = {
            width = vim.api.nvim_win_get_width(0) - 4,
        },
        settings = {
            save_on_toggle = true,
        },
    },
    keys = function()
        local keys = {
            {
                "<leader>a",
                function()
                    require("harpoon"):list():add()
                end,
            },
            {
                "<C-e>",
                function()
                    local harpoon = require("harpoon")
                    harpoon.ui:toggle_quick_menu(harpoon:list())
                end,
            },
        }

        for i = 1, 9 do
            table.insert(keys, {
                "<C-" .. i .. ">",
                function()
                    require("harpoon"):list():select(i)
                end,
            })
        end

        return keys
    end,
}
