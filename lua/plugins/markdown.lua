return {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
    opts = {
        file_types = { "markdown", "Avante" },
        heading = {
            position = "inline",
        },
        code = { position = "right", width = "block", left_pad = 2, right_pad = 4, border = "thick" },
    },
}
