return {
    'goolord/alpha-nvim',
    config = function()
        -- local conf = require('alpha.themes.dashboard').config
        require 'alpha'.setup(require 'alpha.themes.dashboard'.config)
    end
};
