set ts=4
set shiftwidth=4
set softtabstop=4
set expandtab
set bg=dark
set shell=/bin/bash

execute pathogen#infect()

filetype on            " enables filetype detection
filetype plugin on     " enables filetype specific plugins

au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)

set wildmenu

set list listchars=tab:»·,trail:·
autocmd filetype html,xml,go set listchars-=trail:>.

set spelllang=en_us
set number

au FileType python source ~/.vim/ftplugin/pyflakes.vim
au FileType recipe source ~/.vim/ftplugin/python.vim

set background=dark
" solarized options
"let g:solarized_visibility = "high"
"let g:solarized_contrast = "high"
"let g:solarized_termcolors = 256

colorscheme solarized

" remap snips expansion since tab is used by code completion
let g:UltiSnipsExpandTrigger = '<C-j>'

" format with goimports instead of gofmt
let g:go_fmt_command = "goimports"

command Sync syntax sync fromstart
