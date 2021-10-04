let g:prettier#autoformat_config_present = 1 
let g:prettier#config#config_precedence = 'prefer-file'

let g:airline_theme='onedark'
let g:NERDTreeShowHidden = 1 
let g:NERDTreeMinimalUI = 0 
let g:NERDTreeIgnore = ['node_modules'] 
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