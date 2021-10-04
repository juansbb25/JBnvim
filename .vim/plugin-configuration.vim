let g:prettier#autoformat_config_present = 1 
let g:prettier#config#config_precedence = 'prefer-file'

"  nerdtree
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowLineNumbers=1
let NERDTreeMapOpenInTab='\t'
"let g:NERDTreeIgnore = ['node_modules'] 
let NERDTreeStatusLine='NERDTree' 
" Automaticaly close nvim if NERDTree is only thing left open 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif 
" Toggle


let g:mergetool_layout = 'mr'
let g:mergetool_prefer_revision = 'local'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:prettier#autoformat = 0
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.tsx'

autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

"Nuevas configuraciones
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6, 'relative': v:true } }


" open new split panes to right and below 
set splitright 
set splitbelow 

"airline 
let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1
let g:airline_extensions = ['branch', 'tabline']
let g:airline#extensions#tabline#buffer_nr_show = 1
" unicode symbols
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" Unicode symbols
let g:airline_symbols.colnr = ' ㏇:'
let g:airline_symbols.colnr = '|'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '|'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = ' '
