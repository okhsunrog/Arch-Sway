" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'Rigellute/rigel'
Plug 'vim-airline/vim-airline'
Plug 'pangloss/vim-javascript'
Plug 'vim-airline/vim-airline-themes'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

"""" enable 24bit true color
set termguicolors

"""" enable the theme
syntax enable
colorscheme rigel

let g:rigel_airline = 1
let g:airline_theme = 'rigel'

