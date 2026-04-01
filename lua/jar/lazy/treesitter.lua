return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
        require('nvim-treesitter').install
        {
            'vimdoc', 'jsdoc', 'bash',
            'javascript', 'typescript',
            'c', 'go', 'javascript', 'swift', 'rust', 'zig',
            'markdown'
        }
    end
}
