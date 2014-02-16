""""""""""""""""""""""""""""""""""""""""""""""""
" .vimrc default setup file for Terminbal IDE  "
"                                              "
" Creator : Spartacus Rex                      "
" Version : 1.0                                "
" Date    : 9 Nov 2011                         "
""""""""""""""""""""""""""""""""""""""""""""""""

"The basic settings
set nocp
set ls=2
set tabstop=2
set ruler
set number
set ignorecase
set modeline
set autoindent
set nobackup
set wrap
set hidden
set backspace=indent,eol,start
set expandtab

"Syntax highlighting
syntax on

"Yes filetype matter
filetype plugin on

"Set a nice Omnifunc - <CTRL>X <CTRL>O
set ofu=syntaxcomplete#Complete

"Source a few scripts at startup
"source ~/.vim/autoload/javacomplete.vim
source ~/.vim/autoload/cscope_maps.vim

"Set some nice java functions - <CTRL>X <CTRL>U
set completefunc=javacomplete#Complete

"Make javac the build prog - :make
"You will need to change this per project to account for libs..
"Choose on of the following for starters
"YOU MUST start vim from the 'src/' folder. or javac wont work..

"This is the simplest possible
autocmd Filetype java set makeprg=javac\ %

"This is a good default one - works for projects without libs
"autocmd Filetype java set makeprg=javac\ -d\ ../build/\ %

"Mapped some FUNCTION keys to be more useful..
map <F7> :wa<Return>:make<Return>:copen<Return>
map <F9> :wa<Return>:make clean<Return>:copen<Return>
map <F10> :wa<Return>:make debug<Return>:copen<Return>
imap <F7> <ESC><F7>
imap <F9> <ESC><F9>
imap <F10> <ESC><F10>

map <F6> :cprevious<Return>
map <F8> :cnext<Return>
imap <F6> <ESC><F6>
imap <F8> <ESC><F8>

map <F1> :lprev<Return>
map <F2> :lnext<Return>
imap <F1> <ESC><F1>
imap <F2> <ESC><F2>

imap jj <Esc>

"This is a nice buffer switcher
:nnoremap <F5> :buffers<CR>:buffer<Space>

" These are useful when using MinBufExpl
" BUT the CTRL+ARROW key mappings are still wrong on Terminal IDE soft Keyboard..
" This will only work over telnet/ssh . Fix Soon.
"let g:miniBufExplMapWindowNavVim    = 1
"let g:miniBufExplMapWindowNavArrows = 1

"You can change colors easily in vim. 
"Just type <ESC>:colorscheme and then TAB complete through the options 
set t_Co=256
colorscheme elflord
set background=dark

"Set the color for the popup menu
:highlight Pmenu ctermbg=blue ctermfg=white
:highlight PmenuSel ctermbg=blue ctermfg=red
:highlight PmenuSbar ctermbg=cyan ctermfg=green
:highlight PmenuThumb ctermbg=white ctermfg=red

" DICTIONARY
" The dictioanry can pop up a lot of words when you have Auto popup enabled. 
" You can disable auto popup, by removing the acp.vim from your ~/.vim/plugin/
" directory and enable the dictionary here - then use <CTRL>X <CTRL>K to bring
" up the dictionary options. Or just enable it.. :-)
"set dictionary+=~/system/etc/dict/words

" Make vim popup behave more like an IDE POPUP
set completeopt=longest,menuone

" Make enter finish the completion popup menu
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

"Auto start NERDTree on startup..
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p

"TAGLIST setup
nnoremap <F3> :TlistToggle<CR>
let Tlist_Use_Right_Window = 1
let Tlist_WinWidth = 50

" >% to indent block
set shiftwidth=2

" hightlight text over 80 chars
":au BufWinEnter *.cc,*.h let w:m1=matchadd('Search', '\%<81v.\%>77v', -1)
:au BufWinEnter *.cc,*.h let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
