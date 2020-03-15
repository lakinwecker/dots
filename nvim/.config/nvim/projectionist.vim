
let g:projectionist_heuristics = {
      \   "*": {
      \     "*.cpp": {
      \        "type": "source",
      \        "alternate": "{}.h"
      \     },
      \     "*.h": {
      \        "type": "source",
      \        "alternate": "{}.cpp"
      \     }
      \   }
      \ }
