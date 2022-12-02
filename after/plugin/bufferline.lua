require('bufferline').setup({
  options = {
    mode = "tabs",
    separator_style = "thin",
    always_show_bufferline = false,
    show_buffer_close_icons = true,
    show_close_icon = true,
    color_icons = true,
    diagnostics = "nvim_lsp",
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        text_align = "left",
        separator = true,
      }
    }
  }
})

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
