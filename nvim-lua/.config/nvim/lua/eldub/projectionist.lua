M = {}
function M.init(use)
  use { 'tpope/vim-projectionist' }

  -- TODO: projectionist
  -- vim.g.projectionist_heuristics = {
     -- "*": {
       -- "*.cpp": {
          -- "type": "source",
          -- "alternate": "{}.h"
       -- },
       -- "*.h": {
          -- "type": "source",
          -- "alternate": "{}.cpp"
       -- }
     -- }
   -- }
end
return M
