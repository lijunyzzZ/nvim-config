require'nvim-treesitter.configs'.setup {

    ensure_installed = { "vim", "bash", "c", "typescript", "json", "lua", "javascript"},
    highlight = {enable = true},
    indent = { enable = true},
    rainblow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
    }
}
