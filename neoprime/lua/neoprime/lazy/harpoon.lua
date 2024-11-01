
local harpoon =  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function ()


        local harpoon = require("harpoon")
        --[[
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")

    vim.keymap.set("n", "<leader>a", mark.add_file)
    vim.keymap.set("n", "<leader>hp", ui.toggle_quick_menu)

    vim.keymap.set("n", "<leader>1", function() ui.nav_file(1) end)
    vim.keymap.set("n", "<leader>2", function() ui.nav_file(2) end)
    vim.keymap.set("n", "<leader>3", function() ui.nav_file(3) end)
    vim.keymap.set("n", "<leader>4", function() ui.nav_file(4) end)
    ]]--
        harpoon:setup()
        vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
        vim.keymap.set("n", "<c-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

        vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end)
        vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end)
        vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end)
        vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end)
    end



    --[[	
    {
    "vim-apm", dir = "~/personal/vim-apm",
    config = function()
    local apm = require("vim-apm")

    apm:setup({})
    vim.keymap.set("n", "<leader>apm", function() apm:toggle_monitor() end)
    end
    },
    --]]

}


return harpoon
