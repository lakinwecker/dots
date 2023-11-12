M = {}
function M.init_scala()
  local metals = require("metals")
  local ide = require("eldub.ide")
  local map = require("eldub.keys")

  local metals = require("metals")
  local config = metals.bare_config()
  config.init_options.statusBarProvider = "on"
  metals.initialize_or_attach(config)
  ide.init(map.n)
end

return M
