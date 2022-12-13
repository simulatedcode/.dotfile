local status, bufferline = pcall(require, "bufferline")
if not status then
	return
end

bufferline.setup({
	options = {
		mode = "buffers",
		separator_style = "thin",
		always_show_bufferline = false,
		show_buffer_close_icons = true,
		show_close_icon = false,
		color_icons = false,
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				text_align = "left",
				highlight = "Directory",
				padding = 1,
			},
		},
	},
})
