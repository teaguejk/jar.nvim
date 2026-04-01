return
--[[
{
    'rebelot/kanagawa.nvim',
    priority = 1000,
    config = function()
        vim.cmd.colorscheme 'kanagawa-dragon'
    end,
}
]] --
--[[
{
    'rose-pine/neovim',
    priority = 1000,
    config = function()
        require("rose-pine").setup({
            styles = {
                transparency = true,
            }
        })

        vim.cmd.colorscheme 'rose-pine'
    end,
}
]] --
{
    'folke/tokyonight.nvim',
    priority = 1000,
    config = function()
        ---@diagnostic disable-next-line: missing-fields
        require('tokyonight').setup {
            transparent = true,
            styles = {
                comments = { italic = false },
                sidebars = "transparent",
                floats = "transparent",
            },
        }

        vim.cmd.colorscheme 'tokyonight-night'
    end,
}
--[[
{
    "yoom-engineering/oxocarbon.nvim",
    config = function()
        vim.cmd.colorscheme 'oxocarbon'
    end
}
]] --
--[[
{
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("cyberdream").setup({
            transparent = true,
        })

        vim.cmd.colorscheme 'cyberdream'
    end
}
]] --
--[[
    {
      'sainnhe/gruvbox-material',
      lazy = false,
      priority = 1000,
      config = function()
        -- Optionally configure and load the colorscheme
        -- directly inside the plugin declaration.
        vim.g.gruvbox_material_enable_italic = true
        vim.cmd.colorscheme('gruvbox-material')
      end
    }
]] --
--[[
{
  "loctvl842/monokai-pro.nvim",
  config = function()
    require("monokai-pro").setup({
        transparent_background = true
    })

    vim.cmd.colorscheme('monokai-pro')
  end
}
]] --
--[[
{
    "loctvl842/monokai-pro.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("monokai-pro").setup({
            transparent_background = true,
        })
        vim.cmd.colorscheme("monokai-pro")
    end,
}
]] --
