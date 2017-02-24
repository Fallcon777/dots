set nocompatible
filetype off  								" required for plugin manager realy777
set backspace=indent,eol,start
set history=500
set number
set ruler
set showcmd       " " Show the current command at the bottom
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
set smarttab      " insert tabs on the start of a line according to
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
"set statusline=%<%f%h%m%r%=format=%{&fileformat}\ file=%{&fileencoding}\ file=%{&filetype}\ enc=%{&encoding}\ %b\ 0x%B\ %l,%c%V\ %P
set laststatus=2
nmap Q q
syntax enable
let mapleader=" "
let g:mapleader=" "
set mouse=a
map <MiddleMouse> "+gP
let g:solarized_termcolors=256
colorscheme solarized
set background=dark
set foldmethod=indent
set foldlevel=99
"set foldexpr=getline(v:lnum)=~'^\\s*$'&&getline(v:lnum+1)=~'\\S'?'<1':1
set modelines=1
filetype plugin on
filetype indent on
" Set to auto read when a file is changed from the outside
set autoread
set magic
"set nobackup
"set nowb
"set noswapfile
set swapfile
set dir=/media/arch/archive/vimtmp//
set undodir=/media/arch/archive/vimtmp/vim/undo//
set backupdir=/media/arch/archive/vimtmp/vim/backup//
set directory=/media/arch/archive/vimtmp/vim/swp//
" по умолчанию - латинская раскладка
set iminsert=0
" по умолчанию - латинская раскладка при поиске
set imsearch=0
" всегда делать активное окно максимального размера
set noequalalways
set winheight=9999
set iskeyword=@,48-57,_,192-255 " настраиваю для работы с русскими словами (чтобы w, b, * понимали русские слова)
" задать размер табуляции в четыре пробела
set ts=4
" перенос по словам, а не по буквам
set linebreak
set dy=lastline
set tabstop=4
set shiftwidth=4
nmap zz :w<cr>
" Map Ctrl+V to paste in Insert mode
imap <C-V> <C-R>*
" Map Ctrl+C to copy in Visual mode
vmap <C-C> "+y
" Add paste shortcut
nmap <leader>p "+p
"NERD_commenter
nmap // <leader>c<space>
"vmap // <leader>cs
vmap // <leader>cn
vmap /s <leader>cs
nmap /s <leader>cs
imap <F2> <Esc>:w<CR>
map <F2> <Esc>:w<CR>
imap <F3> "+y
map <F3> "+y
imap <F4> "+gp
map <F4> "+gp
"if spaces in paste text
set pastetoggle=<F12>
"orphographia
set wildmenu
set wcm=<Tab>
menu SetSpell.ru  :set spl=ru spell<CR>
menu SetSpell.en  :set spl=en spell<CR>
menu SetSpell.off :set nospell<CR>
map <F5> :emenu SetSpell.<Tab>
" выбор альтернатив:
imap <F6> <Esc> z=<CR>i
map <F6> z=<CR>
"<F8> Change encoding
                set  wildmenu
                set  wcm=<Tab>
                menu Enc.cp1251     :e ++enc=cp1251<CR>
                menu Enc.koi8-r     :e ++enc=koi8-r<CR>
                menu Enc.cp866      :e ++enc=ibm866<CR>
                menu Enc.utf-8      :e ++enc=utf-8<CR>
                menu Enc.ucs-2le    :e ++enc=ucs-2le<CR>
                menu Enc.HexView    :Hex4me<CR>
                map  <F8> :emenu Enc.<Tab>
"<Shift+F8> Convert file encoding
                set  wildmenu
                set  wcm=<Tab>
                menu FEnc.cp1251    :set fenc=cp1251<CR>
                menu FEnc.koi8-r    :set fenc=koi8-r<CR>
                menu FEnc.cp866     :set fenc=ibm866<CR>
                menu FEnc.utf-8     :set fenc=utf-8<CR>
                menu FEnc.ucs-2le   :set fenc=ucs-2le<CR>
                map  <S-F8> :emenu FEnc.<Tab>
"cmap w!! w !sudo tee > /dev/null %
nnoremap <space> za
vnoremap <space> zf
" по звездочке не прыгать на следующее найденное, а просто подсветить
nnoremap * *N
nnoremap <F9> :nohlsearch<CR>
nmap <F7> :TagbarToggle<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" "Files"                   Настройки для файлов {{{1
set encoding=utf-8                                  " set charset translation encoding
set termencoding=utf-8                              " set terminal encoding
set fileencoding=utf-8                              " set save encoding
set fileencodings=utf-8,koi8r,cp1251,cp866,ucs-2le   " список предполагаемых кодировок, в порядке предпочтения
set fileformat=unix          " Формат файла по умолчанию
set fileformats=unix,dos,mac " Порядок определения формата файла
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>
"python PEP88
"au BufNewFile,BufRead *.py
    "\ set tabstop=4
    "\ set softtabstop=4
    "\ set shiftwidth=4
    "\ set textwidth=79
    "\ set expandtab
set autoindent
    "\ set fileformat=unix
"""other types
"au BufNewFile,BufRead *.js, *.html, *.css
    "\ set tabstop=2
    "\ set softtabstop=2
    "\ set shiftwidth=2
"""""PLUGINS"""""""""""""""""""""""""""""""""""""""
" Vundle Plugin Manager
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'easymotion/vim-easymotion'
"Plugin 'vim-scripts/translit_converter'
Plugin 'vimwiki/vimwiki'
Plugin 'majutsushi/tagbar'
Plugin 'mattn/calendar-vim'
Plugin 'junegunn/fzf'
Plugin 'tpope/vim-fugitive'
"Plugin 'Solarized'
""ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

""simplyfold
let g:SimpylFold_docstring_preview=1

"  nerdtree          close vim if the only window left open is a NERDTree?
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"  vim-airline
"  Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
" vim-buffergator     Use the right side of the screen
let g:buffergator_viewport_split_policy = 'R'
" I want my own keymappings...
let g:buffergator_suppress_keymaps = 1
" Go to the previous buffer open
nmap <leader>jj :BuffergatorMruCyclePrev<cr>
execute "set <M-j>=\ej"
nnoremap <M-j> :BuffergatorMruCyclePrev<cr>
execute "set <M-k>=\ek"
nnoremap <M-k> :BuffergatorMruCycleNext<cr>
" Go to the next buffer open
nmap <leader>kk :BuffergatorMruCycleNext<cr>
" View the entire list of buffers open
nmap <leader>bl :BuffergatorOpen<cr>
nmap <leader>bn :enew<cr>
"close buffer
nmap <leader>bq :bp <BAR> bd #<cr>
execute "set <M-q>=\eq"
nnoremap <M-q> :bp <BAR> bd #<cr>
"
" == easymotion ==
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)
" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)
" Move to line
map <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)
" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
"  FZF
map <C-f> :FZF<CR>
map <C-l> :Locate<space>
map <C-m> :FZFMru<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"ack Ag
nmap <leader>/ :Ag<space>
Plugin 'python-mode/python-mode'
let g:pymode_python = 'python3'
"Turn on the whole plugin      *'g:pymode'*
let g:pymode = 1
let g:pymode_indent = 1
let g:pymode_doc = 1
let g:pymode_doc_bind = 'K'
let g:pymode_virtualenv = 1
" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
" Don't autofold code
let g:pymode_folding = 0
let g:pymode_rope = 0
" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1
" Support virtualenv
let g:pymode_virtualenv = 1
" Documentation is available in your vim :help pymode
"vimwiki
let g:vimwiki_list = [{'path': '/media/arch/txt/vimwiki'}]
let g:WikiGlobal = {}
let g:WikiGlobal.nested_syntaxes = {'python': 'python', 'sh': 'sh'}
" 		disable concealing of short links
let g:vimwiki_url_maxsave = 42
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" !!! All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
