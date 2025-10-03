return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    keys = {
        { "<leader>e", "<cmd>NvimTreeToggle<cr>" },
    },
    config = function()
        local api = require("nvim-tree.api")

        require("nvim-tree").setup({
            on_attach = function(bufnr)
                -- default mappings
                api.config.mappings.default_on_attach(bufnr)

                -- custom mappings
                local opts = { buffer = bufnr, noremap = true, silent = true, nowait = true }
                vim.keymap.set("n", "l", function()
                    local node = api.tree.get_node_under_cursor()
                    if node.nodes ~= nil then
                        api.node.open.edit()
                    else
                        api.node.open.edit()
                        api.tree.close()
                    end
                end, opts)
                vim.keymap.set("n", "s", function()
                    local node = api.tree.get_node_under_cursor()
                    if node.nodes ~= nil then
                        api.node.open.edit()
                    else
                        api.node.open.vertical()
                    end
                    api.tree.focus()
                end, opts)
                vim.keymap.set("n", "h", api.tree.close, opts)
            end,
        })

        -- Automatically open file upon creation
        api.events.subscribe(api.events.Event.FileCreated, function(file)
            vim.cmd("edit " .. vim.fn.fnameescape(file.fname))
        end)

        -- Automatically close nvim-tree when quitting Neovim
        vim.api.nvim_create_autocmd({ "QuitPre" }, {
            nested = false,
            callback = function()
                local tree = require("nvim-tree.api").tree
                if not tree.is_visible() then
                    return
                end
                vim.api.nvim_cmd({ cmd = "qall" }, {})
            end,
        })
    end,
}
