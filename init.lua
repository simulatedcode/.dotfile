pcall(require, "impatient")

if require("loskepetos.first_load")() then
  return
end

require("loskepetos.options")
require("loskepetos.highlights")
require("loskepetos.plugins")
require("loskepetos.keymaps")
require("loskepetos.lspconfig")
require("loskepetos.colorscheme")
require("loskepetos.utilities")
