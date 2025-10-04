return {
    cmd = { 'vscode-css-language-server', '--stdio' },
    filetypes = { 'css' },
    init_options = { provideFormatter = true },
    root_markers = { 'package.json', '.git' },
    settings = {
        css = { validate = true },
    },
}
