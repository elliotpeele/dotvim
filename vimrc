set ts=4
set shiftwidth=4
set softtabstop=4
set expandtab
set bg=dark
set shell=/bin/bash

execute pathogen#infect()

filetype on            " enables filetype detection
filetype plugin on     " enables filetype specific plugins

"au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
autocmd FileType python highlight Excess ctermbg=LightBlue
autocmd FileType python match Excess /\%81v.*/

set wildmenu

set list listchars=tab:»·,trail:·
autocmd filetype html,xml,go set listchars-=trail:>.

set spelllang=en_us
set number

au FileType recipe source ~/.vim/ftplugin/python.vim

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set statusline+=%f
set statusline+=%=
set statusline+=%-14.(%l,%c%V%)\ %P

" configure undo file
set undodir=~/.vim/undo
set undofile
set undolevels=1000  "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

let g:syntastic_python_checkers = ['pyflakes']

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
let g:go_fmt_autosave = 1

" enable nocomplete
let g:neocomplete#enable_at_startup = 1

" always lint on save
let g:go_metalinter_autosave = 1

let g:go_highlight_extra_types = 1
let g:go_highlight_functions = 0
let g:go_highlight_methods = 1
let g:go_highlight_types = 0

command Sync syntax sync fromstart
