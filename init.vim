set scrolloff=8 
set number 
set relativenumber 
set tabstop=4 
set shiftwidth=4 
set expandtab 
set smartindent 
set encoding=utf8 
let g:airline_powerline_fonts = 1

call plug#begin('~/.vim/plugged')
Plug 'samoshkin/vim-mergetool'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'rodrigore/coc-tailwind-intellisense', {'do': 'npm install'}
Plug 'marko-cerovac/material.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'
Plug 'ryanoasis/vim-devicons'
Plug 'alvan/vim-closetag'
Plug 'haishanh/night-owl.vim'
Plug 'junegunn/fzf', {'do': { -> fzf#install() } } 
Plug 'junegunn/fzf.vim'
call plug#end()

" If you have vim >=8.0 or Neovim >= 0.1.5
if(has("termguicolors")) 
	set termguicolors
endif
""""" enable the theme

syntax enable
colorscheme night-owl
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

let g:airline_theme='onedark'
let g:NERDTreeShowHidden = 1 
let g:NERDTreeMinimalUI = 0 
let g:NERDTreeIgnore = ['node_modules'] 
let NERDTreeStatusLine='NERDTree' 
" Automaticaly close nvim if NERDTree is only thing left open 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif 
" Toggle
nnoremap <C-e> :NERDTreeToggle<CR>

let g:mergetool_layout = 'mr'
let g:mergetool_prefer_revision = 'local'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:prettier#autoformat = 0
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.tsx'

autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

"Nuevas configuraciones
nnoremap <leader>pv :Vex<CR> 
nnoremap <leader>pf :Files<CR> 
inoremap jk <esc>:w<CR> 
nnoremap <C-p> :GFiles<CR>

