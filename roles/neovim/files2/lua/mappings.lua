-- local function nvim_tree_mappings(bufnr)
--   local km = vim.keymap.set
--   local api = require "nvim-tree.api"

--   local function opts(desc)
--     return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
--   end

--   -- default mappings
--   api.config.mappings.default_on_attach(bufnr)

--   -- custom mappings
--   km('n', '<C-t>', api.tree.change_root_to_parent,        opts('Up'))
--   km('n', '?',     api.tree.toggle_help,                  opts('Help'))
--   km('n', '<leader>bb', api.tree.toggle, {desc = 'nvim-tree: Toggle Tree', nowait = true})
--   km('n', '<leader>bc', api.tree.close, {desc = 'nvim-tree: Close Tree', nowait = true})
--   km('n', '<leader>bf', api.tree.focus, {desc = 'nvim-tree: Focus Tree', nowait = true})

--   local FloatPreview = require("float-preview")
--   FloatPreview.attach_nvimtree(bufnr)
-- end
-- -- ({ path = "<args>", find_file = false, update_root = false, focus = true, })

-- -- pass to setup along with your other options
-- require("nvim-tree").setup {
--   ---
--   on_attach = nvim_tree_mappings,
--   ---
-- }

local km = vim.keymap.set

return {
  -- km('n', '<C-t>', )
    -- km('n', '<leader>1', '<Cmd>Neotree source=filesystem focus<CR>'),
    km('n', '<leader>1', '<Cmd>Neotree toggle<CR>', {desc = "Toggle Neotree"}),
    -- km('n', '<leader>`', require('winshift.lib').window_picker(), {noremap=true}),
    km("n", "gpd", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", {noremap=true}),
    km("n", "gpt", "<cmd>lua require('goto-preview').goto_preview_type_definition()<CR>", {noremap=true}),
    km("n", "gpi", "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>", {noremap=true}),
    km("n", "gpD", "<cmd>lua require('goto-preview').goto_preview_declaration()<CR>", {noremap=true}),
    km("n", "gpc", "<cmd>lua require('goto-preview').close_all_win()<CR>", {noremap=true}),

-- Tabby
    km("n", "<leader>ta", ":$tabnew<CR>", { noremap = true }, {desc = "Tabby: New tab"}),
    km("n", "<leader>tc", ":tabclose<CR>", { noremap = true }),
    km("n", "<leader>to", ":tabonly<CR>", { noremap = true }),
    -- km("n", "<leader>tn", ":tabn<CR>", { noremap = true }),
    -- km("n", "<leader>tp", ":tabp<CR>", { noremap = true }),
    -- move current tab to previous position
    km("n", "<leader>tmp", ":-tabmove<CR>", { noremap = true }),
    -- move current tab to next position
    km("n", "<leader>tmn", ":+tabmove<CR>", { noremap = true }),

-- Cloak
    km("n", "<leader>ct", ":CloakToggle<CR>", { noremap = true, desc = "Cloak: Toggle cloaking"}),

-- ToggleTerm
    km("n", "<C-t>", ":ToggleTerm<CR>", { noremap = true, desc = "ToggleTerm: Toggle Terminal"})


}
