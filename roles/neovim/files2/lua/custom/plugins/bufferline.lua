-- return {
--   'jercle/bufferline.nvim',
--   version = "*",
--   dependencies = 'nvim-tree/nvim-web-devicons',
--   config = function()
--     require("bufferline").setup({
--       options = {
--         mode = "tabs",
--         separator_style = "slope"
--     --     name_formatter = function(buf)  -- buf contains:
--     --       local repo = vim.fn.system("basename `git rev-parse --show-toplevel`")
--     --       return repo
--     --       -- name                | str        | the basename of the active file
--     --       -- path                | str        | the full path of the active file
--     --       -- bufnr (buffer only) | int        | the number of the active buffer
--     --       -- buffers (tabs only) | table(int) | the numbers of the buffers in the tab
--     --       -- tabnr (tabs only)   | int        | the "handle" of the tab, can be converted to its ordinal number using: `vim.api.nvim_tabpage_get_number(buf.tabnr)`
--     -- end,
--       }
--     })
--   end
-- }
return {}
