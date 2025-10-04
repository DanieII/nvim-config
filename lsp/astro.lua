return {
    cmd = { 'astro-ls', '--stdio' },
    filetypes = { 'astro' },
    root_markers = { 'package.json', 'tsconfig.json', 'jsconfig.json', '.git' },
    init_options = {
        typescript = {
            tsdk = vim.fs.normalize("/usr/local/lib/node_modules/typescript/lib") -- Typescript server path
        },
    },
}
