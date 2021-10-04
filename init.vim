set scrolloff=8 
set number 
set mouse=a
set numberwidth=1
set clipboard=unnamed
set relativenumber 
set tabstop=4 
set shiftwidth=4 
set expandtab 
set smartindent 
set encoding=utf8 
let g:airline_powerline_fonts = 1
let path = expand('~')
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set noshowmode
set termguicolors
set sw=2

exec 'source' path . '\AppData\Local\nvim/.vim/plugin.vim'
exec 'source' path . '\AppData\Local\nvim/.vim/remaps.vim'
exec 'source' path . '\AppData\Local\nvim/.vim/plugin-configuration.vim'

highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

" If you have vim >=8.0 or Neovim >= 0.1.5
if(has("termguicolors")) 
	set termguicolors
endif
""""" enable the theme
syntax enable
colorscheme onedark


