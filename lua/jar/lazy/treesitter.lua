--[[
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
]] --
return {
    'nvim-treesitter/nvim-treesitter',
    branch = 'main',
    lazy = false,
    build = ':TSUpdate',
    config = function()
        local parsers = {
            'vimdoc', 'jsdoc', 'bash',
            'javascript', 'typescript',
            'c', 'go', 'swift', 'rust', 'zig',
            'markdown', 'markdown_inline',
        }

        require('nvim-treesitter').install(parsers)

        vim.api.nvim_create_autocmd('FileType', {
            pattern = {
                'help', 'bash', 'sh',
                'javascript', 'javascriptreact',
                'typescript', 'typescriptreact',
                'c', 'go', 'swift', 'rust', 'zig',
                'markdown',
            },
            callback = function()
                vim.treesitter.start()
                vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
                vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
            end,
        })
    end,
}
