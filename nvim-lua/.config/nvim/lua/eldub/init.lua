local M = {}

---@param opts? LazyVimConfig
function M.setup(opts)
  require("eldub.config").setup(opts)
end

return M
