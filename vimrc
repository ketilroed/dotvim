syntax on
colorscheme gruvbox
set background=dark
set cursorline
set expandtab
set number
"set relativenumber

"set list

" Ignore case for searches
set ignorecase


" shortcut to edit vimrc
nnoremap <leader>ev :e ~/.vim/vimrc<cr>



nnoremap <C-B> :NERDTreeToggle<CR>
nnoremap ,b :ls<CR>:buffer<Space>
nnoremap ,o :bro ol<CR>
let mapleader="\<space>"


" Seems to be needed for backspace to work as expected
set backspace=indent,eol,start
 
" Needed for vim to use tab instead of spaces in makefile
autocmd FileType make setlocal noexpandtab

" Cycle through buffers
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>


"au BufRead,BufNewFile *.py set expandtab textwidth=80
"set textwidth=80
" hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
" hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
" nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>



