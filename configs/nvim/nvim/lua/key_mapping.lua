---GENERAL------------------------------------------------------
vim.g.mapleader = " "
---- testing insert commands------------------------------------
vim.api.nvim_set_keymap("n", "a", "<Nop>", { noremap = true })
vim.api.nvim_set_keymap("n", "i", "a", { noremap = true })
---- UNFOLD ALL--------------------------------------------
vim.api.nvim_set_keymap("n", "<leader>fu", ":lua UnfoldAll()<CR>", { noremap = true, silent = true })

function UnfoldAll()
	vim.cmd([[normal! zA]])
end

----------------------------------------------------------------

---NEO TREE--------------------------------------------------------------
--vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})
vim.keymap.set("n", "<Leader>fm", ":Neotree toggle<CR>", {})
-------------------------------------------------------

---TELESCOPE----------------------------------------------------------------------------------------------
--vim.api.nvim_set_keymap("n", "<leader>ff", ":Telescope find_files<CR>", { noremap = true, silent = true })
--vim.api.nvim_set_keymap("n", "<leader>fg", ":Telescope live_grep<CR>", { noremap = true, silent = true })
--vim.api.nvim_set_keymap("n", "<leader>fb", ":Telescope buffers<CR>", { noremap = true, silent = true })
-------------------------------------------------------------------------------------------------------

--PETS------------------------------------------------------------------
vim.api.nvim_set_keymap("n", "<Leader>bauer", "<cmd>PetsNew bauer<CR>", {})
