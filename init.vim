set number
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

call plug#end()

colorscheme onedark
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

syntax on
let g:airline_theme='onedark'
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <C-p> :Prettier<CR>

let g:mergetool_layout = 'mr'
let g:mergetool_prefer_revision = 'local'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:prettier#autoformat = 0
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.tsx'

autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

set encoding=UTF-8
set relativenumber
