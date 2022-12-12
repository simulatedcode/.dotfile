require("bufferline").setup({
  options = {
    mode = "buffers",
    separator_style = "slant",
    always_show_bufferline = true,
    show_buffer_close_icons = true,
    show_close_icon = false,
    buffer_modified_icon = "",
    color_icons = false,
    diagnostics = "nvim_lsp",
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      local s = " "
      for e, n in pairs(diagnostics_dict) do
        local sym = e == "error" and " " or (e == "warning" and " " or "")
        s = s .. n .. sym
      end
      return s
    end,
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        text_align = "left",
        separator = true,
      },
    },
  }
})

vim.keymap.set("n", "<S-h>", "<Cmd>BufferLineCycleNext<CR>", {})
vim.keymap.set("n", "<S-l>", "<Cmd>BufferLineCyclePrev<CR>", {})
