" Autocomplete navigation
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")
inoremap <expr> <c-l> ("\<Esc>a")

" Buffer navigation
nnoremap J :bprevious<CR>
nnoremap K :bnext<CR>

" Window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" Remap escape
inoremap jkl <Esc>
inoremap JKL <Esc>

" Tab changes buffer
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>

" Sane Y default
nnoremap Y y$

" add a semicolon
inoremap <M-;> <Esc>A;
nnoremap <M-;> A;<Esc>

" add a comma
inoremap <M-,> <Esc>A,
nnoremap <M-,> A,<Esc>

" add 3 `
inoremap <M-`> ```

" add brackets
inoremap <M-9> <Esc>A()<Left>
nnoremap <M-9> A()<Left>

inoremap <M-[> <Esc>A[]<Left>
nnoremap <M-[> A[]<Left>

inoremap <C-M-[> <Esc>A{}<Left>
nnoremap <C-M-[> A{}<Left>

" Move while in insert mode
inoremap <M-h> <Left>
inoremap <M-j> <Down>
inoremap <M-k> <Up>
inoremap <M-l> <Right>

inoremap <C-M-h> <C-Left>
inoremap <C-M-l> <C-Right>
inoremap <C-M-j> <C-Down>
inoremap <C-M-k> <C-Up>

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Auto format on save
autocmd BufWritePre *.html :normal gg=G ``

" Toggle nvim-tree
nnoremap <leader>e :NvimTreeToggle<CR>

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <CR> to trigger completion.
inoremap <silent><expr> <CR> pumvisible() ? "<Right>" : "\r"

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end


" Floaterm
let g:floaterm_keymap_new    = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<F1>'
let g:floaterm_keymap_kill = '<F12>'


