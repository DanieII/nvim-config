return {
    cmd = { 'tailwindcss-language-server', '--stdio' },
    filetypes = { "astro", "html", 'htmldjango', "css", "javascript", "javascriptreact", "typescript", "typescriptreact" },
    root_markers = { 'tailwind.config.js', 'tailwind.config.cjs', 'package.json', '.git' },
}
