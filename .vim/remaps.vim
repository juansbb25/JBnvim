" This is to allow moving with a more flexible way
:nnoremap j h
:nnoremap k j
:nnoremap l k
:nnoremap ; l
:nnoremap h ;

:vnoremap j h
:vnoremap k j
:vnoremap l k
:vnoremap ; l
:vnoremap h ;



" open terminal on ctrl+n 
function! OpenTerminal()
  " move to right most buffer
  execute "normal \<C-l>"
  execute "normal \<C-l>"
  execute "normal \<C-l>"
  execute "normal \<C-l>"

  let bufNum = bufnr("%")
  let bufType = getbufvar(bufNum, "&buftype", "not found")

  if bufType == "terminal"
    " close existing terminal
    execute "q"
  else
    " open terminal
    "execute "vsp term://powershell"
    split term://powershell 
	resize 10 
    " turn off numbers
    execute "set nonu"
    execute "set nornu"

    " toggle insert on enter/exit
    silent au BufLeave <buffer> stopinsert!
    silent au BufWinEnter,WinEnter <buffer> startinsert!

    " set maps inside terminal buffer
    execute "tnoremap <buffer> <C-h> <C-\\><C-n><C-w><C-h>"
    execute "tnoremap <buffer> <C-n> <C-\\><C-n>:q<CR>"
    execute "tnoremap <buffer> <C-\\><C-\\> <C-\\><C-n>"

    startinsert!
  endif
endfunction
nnoremap <c-n> :call OpenTerminal()<CR> 
nnoremap <C-e> :NERDTreeToggle<CR>
nnoremap <leader>pv :Vex<CR> 
nnoremap <leader>pf :Files<CR> 
inoremap jk <esc>:w<CR> 
nnoremap <C-p> :GFiles<CR>


" Remap keys for go to different
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)