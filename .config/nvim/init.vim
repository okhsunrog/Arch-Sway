" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'overcache/NeoSolarized'
Plug 'lervag/vimtex'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

"""" enable the theme
syntax enable

colorscheme NeoSolarized

let g:vimtex_view_general_viewer = 'zathura'
let g:airline_theme='base16_solarized'
let g:neosolarized_contrast = "normal"

set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set termguicolors
set background=dark
set number

noremap Y "+y
noremap P "+p

