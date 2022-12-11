pcall(require, "impatient")

if require("loskepetos.first_load")() then
	return
end

require("loskepetos.base")
require("loskepetos.plugins")
require("loskepetos.maps")
require("loskepetos.lspconfig")
