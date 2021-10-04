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