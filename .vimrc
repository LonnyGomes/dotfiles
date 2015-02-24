set tabstop=4
set expandtab
syntax on
set shiftwidth=4

set incsearch       "highlight on search

set showmatch       "show matching braces

"activating pathogen plugin
execute pathogen#infect()

if has("autocmd")
filetype plugin indent on
endif

"enable solarized colorscheme
if has('gui_running')
    set background=dark
    colorscheme solarized
else
    colorscheme desert
endif

"to make use of it, open vim with -x
set cryptmethod=blowfish    "set default encryption

"set defaults for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
