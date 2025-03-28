return {
  "karb94/neoscroll.nvim",
  opts = {
    -- All these keys will be mapped to their corresponding default scrolling animation
    mappings = {
      "<C-u>",
      "<C-d>",
      "<C-b>",
      "<C-f>",
      "<C-y>",
      "<C-e>",
      "zt",
      "zz",
      "zb",
    },
    hide_cursor = true, -- Hide cursor while scrolling
    stop_eof = true, -- Stop at <EOF> when scrolling downwards
    respect_scrolloff = true, -- Stop scrolling when the cursor reaches the scrolloff margin of the file
    cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
    easing_function = "quadratic", -- Default easing function
    performance_mode = false, -- Disable "Performance Mode" on all buffers.
    pre_hook = function() -- Function to run before the scrolling animation starts
      vim.opt.eventignore:append {
        "WinScrolled",
        "CursorMoved",
      }
    end,
    post_hook = function() -- Function to run after the scrolling animation ends
      vim.opt.eventignore:remove {
        "WinScrolled",
        "CursorMoved",
      }
    end,
  },
}
