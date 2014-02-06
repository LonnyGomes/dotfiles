set tabstop=4
set expandtab
syntax on
set shiftwidth=4

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
