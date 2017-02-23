" editing Fallcon 30.01.2014
set nocompatible
set backspace=indent,eol,start
set history=100          
" keep 80 lines of command line history
set ruler               
" show the cursor position all the time
set showcmd             
" show partial command in status line
set viminfo='80,%,n~/.viminfo
set guifont=Fira\ Mono\ Regular\ 10 
"mouse move with mouse insert middle mouse 		
set mouse=a
map <MiddleMouse> "+gP 
" map <S-Insert> <MiddleMouse>
" map! <S-Insert> <MiddleMouse>
" colors:
colorscheme murphy
"folds
""set foldmethod=indent
""set shiftwidth=4
"""""""""""""""""""""""""""
"set foldmethod=expr
"fold with Tab
"set foldexpr=getline(v:lnum)[0]==\"\\t\"
"fold with new line
set foldexpr=getline(v:lnum)=~'^\\s*$'&&getline(v:lnum+1)=~'\\S'?'<1':1
"set foldmethod=syntax
"set modeline
set modelines=1
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable filetype plugins
filetype plugin on
filetype indent on
" Set to auto read when a file is changed from the outside
set autoread
" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","
" Fast saving
nmap <leader>w :w!<cr>
nmap <leader><F3> "+gP 
" For regular expressions turn magic on
set magic
" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
endif
" Turn backup off, since most stuff is in SVN, git et.c anyway..
set nobackup
set nowb
set noswapfile
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" установить keymap, чтобы по Ctrl+^ переключался на русский и обратно
"set keymap=russian-jcukenwin 
" по умолчанию - латинская раскладка
set iminsert=0
" по умолчанию - латинская раскладка при поиске
set imsearch=0
" игнорировать регистр при поиске
set ic
"syntax
syntax enable
" подсвечивать поиск
set hls
" использовать инкрементальный поиск
set is
" ширина текста 
set textwidth=80
" минимальная высота окна пусть будет 0 (по умолчанию - 1)
set winminheight=0
" всегда делать активное окно максимального размера
set noequalalways
set winheight=9999
" настраиваю для работы с русскими словами (чтобы w, b, * понимали
" русские слова)
set iskeyword=@,48-57,_,192-255
" задать размер табуляции в четыре пробела
set ts=4
" отображение выполняемой команды
set showcmd 
" перенос по словам, а не по буквам
set linebreak
set dy=lastline
" ширина отступов
"set tabstop=4
set shiftwidth=4
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Remaping
vmap <C-c> "+y
"F2 - save file
imap <F2> <Esc>:w<CR>
map <F2> <Esc>:w<CR>
imap <F3> "+y
map <F3> "+y
"orphographia
set wildmenu
set wcm=<Tab>
" проверка орфографии:
menu SetSpell.ru  :set spl=ru spell<CR>
menu SetSpell.en  :set spl=en spell<CR>
menu SetSpell.off :set nospell<CR>
map <F4> :emenu SetSpell.<Tab>
" выбор альтернатив:
imap <F5> <Esc> z=<CR>i
map <F5> z=<CR>
imap <F6> <Esc> :tabnext <CR>i
map <F6> :tabnext <CR>
" Shortcuts for moving between tabs.
"Alt-j to move to the tab to the left
noremap <A-j> gT
" Alt-k to move to the tab to the right
noremap <A-k> gt
" Encodings
"<F7> EOL format (dos <CR><NL>,unix <NL>,mac <CR>)
                set  wildmenu
                set  wcm=<Tab>
                menu EOL.unix :set fileformat=unix<CR>
                menu EOL.dos  :set fileformat=dos<CR>
                menu EOL.mac  :set fileformat=mac<CR>
                menu EOL.my_win2unix :%s /\r\n/\r/g<CR>
                map  <F7> :emenu EOL.<Tab>
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

"variants exit with F10
set wildmenu
set wcm=<Tab>
menu Exit.save     :exit<CR>
menu Exit.quit     :quit<CR>
menu Exit.quit!    :quit!<CR>
map <F10> :emenu Exit.<Tab>
nnoremap <silent> <F12> :TagbarToggle<CR>
"menu save.as.root  :w !sudo tee %<CR>
"save as root
"cmap w!! w !sudo tee > /dev/null %
cmap w!! w !sudo tee > /dev/null %

:nnoremap <space> za
set statusline=%<%f%h%m%r%=format=%{&fileformat}\ file=%{&fileencoding}\ file=%{&filetype}\ enc=%{&encoding}\ %b\ 0x%B\ %l,%c%V\ %P
set laststatus=2
" по звездочке не прыгать на следующее найденное, а просто подсветить
nnoremap * *N
" выключить подсветку: повесить на горячую клавишу Ctrl-F8
nnoremap <C-F8> :nohlsearch<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" "Files"                   Настройки для файлов {{{1
" ==============================================================================

" Кодировка по умолчанию
set encoding=utf-8                                  " set charset translation encoding
set termencoding=utf-8                              " set terminal encoding
set fileencoding=utf-8                              " set save encoding
set fileencodings=utf-8,koi8r,cp1251,cp866,ucs-2le   " список предполагаемых кодировок, в порядке предпочтения
set fileformat=unix          " Формат файла по умолчанию
set fileformats=unix,dos,mac " Порядок определения формата файла
"tagbar
"let g:tagbar_left = 1   " Показывать окно слева
"let g:tagbar_width = 30 " Ширина окна
"let g:tagbar_iconchars = ['▶', '◢']  " Показывать стрелки вместо +/-
"let g:tagbar_sort = 0   " Не сортировать
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ctrlp
"let g:ctrlp_extensions = ['tag','buffertag','quickfix','dir','rtscript', 'undo','line','changes','mixed']
"let g:ctrlp_show_hidden=0
"let g:ctrlp_custom_ignore=0
