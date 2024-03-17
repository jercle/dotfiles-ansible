return {
  'sindrets/winshift.nvim',
  name = 'winshift',
  event = 'VeryLazy',
  version = '2.*',
  config = function()
    require("winshift").setup({
      window_picker = function()
        return require("winshift.lib").pick_window({
          -- A string of chars used as identifiers by the window picker.
          picker_chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
          filter_rules = {
            -- This table allows you to indicate to the window picker that a window
            -- should be ignored if its buffer matches any of the following criteria.
            cur_win = true, -- Filter out the current window
            floats = true,  -- Filter out floating windows
            filetype = {},  -- List of ignored file types
            buftype = {},   -- List of ignored buftypes
            bufname = {},   -- List of vim regex patterns matching ignored buffer names
          },
          ---A function used to filter the list of selectable windows.
          ---@param winids integer[] # The list of selectable window IDs.
          ---@return integer[] filtered # The filtered list of window IDs.
          filter_func = nil,
        })
      end,
    })

  end
}
