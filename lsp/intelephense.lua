return {
    cmd = { "intelephense", "--stdio" },
    filetypes = { "php" },
    root_markers = { ".git", "composer.json" },
    settings = {
        intelephense = {
            files = {
                maxSize = 5000000,
            },
            -- composer global require php-stubs/wordpress-stubs php-stubs/woocommerce-stubs
            stubs = { "wordpress", "woocommerce" },
            environment = {
                includePaths = { "~/.composer/vendor/php-stubs/" },
            },
        },
    },
}
