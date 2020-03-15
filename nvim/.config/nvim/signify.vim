" signify config
" -------------
let signify_vcs_list = ['git', 'hg', 'bzr', 'svn']
" Always show sign
autocmd BufEnter * sign define dummy 
autocmd BufEnter * execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')
