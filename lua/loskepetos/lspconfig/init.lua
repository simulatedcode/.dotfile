local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("loskepetos.lspconfig.mason")
require("loskepetos.lspconfig.handlers").setup()
require("loskepetos.lspconfig.null-ls")
