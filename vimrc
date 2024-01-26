lua << END
print "hellop"
END

syntax on
colorscheme gruvbox
set background=dark
set cursorline
set expandtab
set number
set relativenumber
"set list
" Ignore case for searches
set ignorecase
" Set full path visible in status line
set statusline+=%F


" filetype on
" filetype plugin on

" file type based indentation
" filetype indent on 


" ------ keyboard and remapping ------
let mapleader="\<space>"
" shortcut to edit vimrc
nnoremap <leader>ev :e ~/.vim/vimrc<cr>

nnoremap ,e :NERDTreeToggle<CR>
nnoremap ,b :ls<CR>:buffer<Space>
nnoremap ,o :bro ol<CR>

" move among buffers with CTRL
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Moving lines
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Cycle through buffers
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

" Seems to be needed for backspace to work as expected
set backspace=indent,eol,start

" Resize
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>


" Some filetype settings
" for C-like  programming where comments have explicit end
" characters, if starting a new line in the middle of a comment automatically
" insert the comment leader characters:
autocmd FileType c,cpp,java set formatoptions+=ro
autocmd FileType c set omnifunc=ccomplete#Complete



" Needed for vim to use tab instead of spaces in makefile
autocmd FileType make setlocal noexpandtab 
"autocm FileType make set noexpandtab shiftwidth=8 softtabstop=0


autocmd BufRead,BufNewFile *.vhd  set tabstop=4
autocmd BufRead,BufNewFile *.vhdl  set tabstop=4

autocmd BufRead,BufNewFile *.yml  set softtabstop=4 tabstop=4


"augroup vhdl
"  autocmd!
"  autocmd BufRead,BufNewFile *.vhd set tabstop=4
"augroup END
" Configure netrw explorer
"let g:netrw_banner = 0
"let g:netrw_liststyle = 3
"let g:netrw_browse_split = 4
"let g:netrw_altv = 1
"let g:netrw_winsize = 15

"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END

"au BufRead,BufNewFile *.py set expandtab textwidth=80
"set textwidth=80
" hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
" hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
" nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>




