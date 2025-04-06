return {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
        require("copilot").setup({
            --[[
            suggestion = {
                enabled = true,
                auto_trigger = false,
                hide_during_completion = false,
                debounce = 25,
                keymap = {
                    accept = false,
                    accept_word = false,
                    accept_line = "<Tab>",
                    next = false,
                    prev = false,
                    dismiss = false,
                },
            },
            --]]
        })
    end,
}

--[[
vim.keymap.set("i", "<Tab>", function()
  if copilot.is_visible() then
    copilot.accept()
  else
    local keys = vim.api.nvim_replace_termcodes("<Tab>", true, false, true)
    vim.api.nvim_feedkeys(keys, "n", false)
  end
end, { silent = true })
--]]
