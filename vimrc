"lorscheme-------------------------------------------------------------------{{{
"colorscheme peachpuff#刺眼
"colorscheme elflord
"colorscheme lucius
"colorscheme freya
"colorscheme solarized
"colorscheme fine_blue
"colorscheme Tomorrow-Night-Blue
"colorscheme Tomorrow-Night-Bright
"colorscheme Tomorrow-Night-Eighties
"colorscheme Tomorrow-Night
"colorscheme Tomorrow
"}}}
"BASIC SET-----------------------------------------------{{{
"Make space more useful zediekj
set hls
set autoindent
set tabstop=4  
set shiftwidth=4  
set expandtab  
set ignorecase smartcase
set number "Bool option set no<name> OR set <name> | use! to switch status of bool value,for example set number!,this common will switch
set numberwidth=4
:hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
:hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
:nnoremap <Leader>z :set cursorline! cursorcolumn!<CR>
"set mouse=a
"endif
set noeb
set nocompatible
filetype plugin on
syntax on
"}}}
"MAPS-----------------------------------------------{{{
let mapleader = ","  
let maplocalleader = "-"  "localleader-->especial filetype just as python/perl and so on CHPTER LEADER
inoremap <c-d> <esc>ddi
inoremap ; <esc>mqA;<esc>`qa
"nnoremap <space> za
inoremap kj <ESC>
inoremap <C-l> <esc>f"A
noremap <leader>d dd
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
noremap <space>" viw<esc>a"<esc>hbi"<esc>lel
noremap <space>_ viw<esc>a__<esc>hbi__<esc>lel
nnoremap H 0
nnoremap L g_
onoremap p i(
        onoremap in :<c-u>execute "normal! ?@\r:nohlsearch\rbviw"<cr>
        nnoremap <C-j> <C-W>j
        nnoremap <C-k> <C-W>k
        nnoremap <C-h> <C-W>h
        nnoremap <C-l> <C-W>l
        nnoremap <f8> :NERDTreeMirror<cr>
        nnoremap <f8> :NERDTreeToggle<cr>
        nnoremap gr gt
        "}}}
        "Abbreviations-----------------------------------------------{{{
        iabbrev adn and
        iabbrev fct function
        iabbrev rrn return
        iabbrev ptr print
        iabbrev 163 ourzizz@163.com
        iabbrev qq 552716481@qq.com
        iabbrev gmail ourzizz@gmail.com
        iab date <c-r>=strftime("%y-%m-%d")<cr>
        "}}}
        "autocmd-----------------------------------------------{{{
        augroup auto_cmd
        autocmd!
        autocmd FileType vim setlocal foldmethod=marker
autocmd FileType python nnoremap <buffer> <F5> :w<cr>:!python %<cr>
autocmd Bufreadpre *.vim :nnoremap <buffer> <F5> :w<cr>:source %<cr>

autocmd FileType python nnoremap <buffer> <localleader>c I//<esc>
autocmd FileType perl nnoremap <buffer> <F5> :w<cr>:!perl %<cr>
autocmd BufWritePre *.html :normal gg=G`.

autocmd FileType python :iabbrev <buffer> iff if:<left>
autocmd FileType javascript :iabbrev <buffer> iff if()<left>
"autocmd FileType *.html :normal gg=G`.

augroup END

"}}}
"statulines-----------------------------------------------{{{
set statusline=%f          
set statusline+=%=        
set statusline+=%l        
set statusline+=/         
set statusline+=%L        
"}}}
"解决中文乱码--------------------------------------------------------------------{{{
"set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
"set termencoding=utf-8
set encoding=utf-8
"}}}
"vundle---------------------------------------------------------{{{
" required!
"git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc('~/vimfiles/bundle/vundle/')
Bundle 'gmarik/vundle'
Bundle 'molokai'
Bundle 'evening_2'
Bundle 'kien/ctrlp.vim'
Bundle 'AutoClose'
Bundle 'matchit.zip'
Bundle 'less.vim'
Bundle 'The-NERD-tree'
Bundle 'The-NERD-Commenter'
Bundle 'godlygeek/tabular'
Bundle 'qiyu2580/vimcdoc'
Bundle 'vim-scripts/Emmet.vim'
Bundle 'auto_mkdir'
"---------------------------------------------"
" Track the engine.
Bundle 'SirVer/ultisnips'
"Bundle 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Bundle 'honza/vim-snippets'
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
"
" " better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
"---------------------------------------------"
Bundle 'ervandew/supertab'
Bundle 'hallettj/jslint.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'Yggdroot/indentLine'
Bundle 'plasticboy/vim-markdown'
Bundle 'vcscommand.vim'
Bundle 'mhinz/vim-startify'
Bundle 'terryma/vim-expand-region'
Bundle 'tpope/vim-surround'
Bundle 'rking/ag.vim'
Bundle 'taiansu/nerdtree-ag'
Bundle 'heavenshell/vim-jsdoc'
Bundle 'Shougo/vimproc.vim'
Bundle 'Shougo/vimshell.vim'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'othree/xml.vim'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'shawncplus/phpcomplete.vim'
Bundle 'maksimr/vim-jsbeautify'
Bundle 'Lokaltog/vim-powerline'
Bundle 'einars/js-beautify'
Bundle 'Valloric/YouCompleteMe'
Bundle 'bufexplorer.zip'  
Bundle 'Lokaltog/vim-easymotion'
Bundle 'taglist.vim'
Bundle 'vimwiki'
let g:ycm_global_ycm_extra_conf = '~/vimfile/bundle/vundle/YouCompleteMe/cpp/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf ='~/vimfiles/bundle/vundle/YouCompleteMe/cpp'
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_confirm_extra_conf = 0
let g:EasyMotion_leader_key = '<Space>'
filetype plugin indent on " required!
"}}}
"browser function------{{{
function! ViewInBrowser()
    let file = expand("%:p")
    exec ":update " . file
    let l:browsers = 'firefox'
    let htdocs='G:\\Apache\\htdocs\\'
    let strpos = stridx(file, substitute(htdocs, '\\\\', '\', "g"))"将所有斜杠转换为\
    echo strpos
    if strpos == -1
        exec ":!". browsers ." file://" . file
    else
        let file=substitute(file, htdocs, "http://127.0.0.1/", "g")
        let file=substitute(file, '\\', '/', "g")
        "        echo file
        exec ":!". browsers ." " . file
    endif
endfunction
nmap <f4> :call ViewInBrowser()<cr>
"}}}
"c/c++complite------{{{
func! CompileGcc()
    exec "w"
    let compilecmd="!gcc "
    let compileflag="-o %< -g "
    if search("mpi\.h") != 0
        let compilecmd = "!mpicc "
    endif
    if search("glut\.h") != 0
        let compileflag .= " -lglut -lGLU -lGL "
    endif
    if search("cv\.h") != 0
        let compileflag .= " -lcv -lhighgui -lcvaux "
    endif
    if search("omp\.h") != 0
        let compileflag .= " -fopenmp "
    endif
    if search("math\.h") != 0
        let compileflag .= " -lm "
    endif
    exec compilecmd." % ".compileflag
endfunc
func! CompileGpp()
    exec "w"
    let compilecmd="!g++ "
    let compileflag="-o %< -g "
    if search("mpi\.h") != 0
        let compilecmd = "!mpic++ "
    endif
    if search("glut\.h") != 0
        let compileflag .= " -lglut -lGLU -lGL "
    endif
    if search("cv\.h") != 0
        let compileflag .= " -lcv -lhighgui -lcvaux "
    endif
    if search("omp\.h") != 0
        let compileflag .= " -fopenmp "
    endif
    if search("math\.h") != 0
        let compileflag .= " -lm "
    endif
    exec compilecmd." % ".compileflag
endfunc

func! RunPython()
        exec "!python %"
endfunc
func! CompileJava()
    exec "!javac %"
endfunc

func! CompileCode()
        exec "w"
        if &filetype == "cpp"
                exec "call CompileGpp()"
        elseif &filetype == "c"
                exec "call CompileGcc()"
        elseif &filetype == "python"
                exec "call RunPython()"
        elseif &filetype == "java"
                exec "call CompileJava()"
        elseif &filetype == "sh"
                exec "!chmod a+x %"
        endif
endfunc

func! RunResult()
        exec "w"
        if search("mpi\.h") != 0
            exec "!mpirun -np 4 ./%<"
        elseif &filetype == "cpp"
            exec "! ./%<"
        elseif &filetype == "c"
            exec "! ./%<"
        elseif &filetype == "python"
            exec "call RunPython"
        elseif &filetype == "java"
            exec "!java %<"
        elseif &filetype == "sh"
            exec "!./%"
        endif
endfunc

map <F5> :call CompileCode()<CR>
imap <F5> <ESC>:call CompileCode()<CR>
vmap <F5> <ESC>:call CompileCode()<CR>
map <F6> :call RunResult()<CR>
nnoremap <F10> :!cgdb %< <CR>
"}}}
"wiki-----{{{
"let wiki = {}
"let wiki.path = '~/my_wiki/'
"let wiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp'}
"let g:vimwiki_list = [wiki]
"}}}
"持久撤销---------------{{{
"http://wiki.ktmud.com/tips/Vim.html设置参考
let $VIMFILES=$HOME.'/.vim'
let $V=$HOME.'/.vimrc'
set undofile
set undodir=$VIMFILES/\_undodir
set undolevels=1000 "maximum number of changes that can be undone"
"}}}
