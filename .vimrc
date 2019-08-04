language C
set noswapfile "Pretend to make .swap
" 15:51 06-15, 15:52

set encoding=utf-8
"#####表示設定#####
set number "行番号を表示する
set title "編集中のファイル名を表示
set showmatch "括弧入力時の対応する括弧を表示
syntax on "コードの色分け
syntax enable " 構文に色を付ける

"##Tab Settings"
set expandtab " タブ入力を複数の空白入力に置き換える
set tabstop=4 " 画面上でタブ文字が占める幅
set softtabstop=4 " 連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent " 改行時に前の行のインデントを継続する
set smartindent " 改行時に前の行の構文をチェックし次の行のインデントを増減する
set shiftwidth=4 " smartindentで増減する幅
set listchars=tab:\ \ ,trail:_  " Not EOL:, end of line to nothing but last space  

"List setting"
set list
set virtualedit=block
set whichwrap=b,s,[,],<,>
set backspace=indent,eol,start
set wildmenu


"#####検索設定#####
set hlsearch
set ignorecase "大文字/小文字の区別なく検索する
set smartcase "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan "検索時に最後まで行ったら最初に戻
filetype off

" ### 表示設定 ###
set laststatus=2 " ステータスラインを常に表示
set showmode " 現在のモードを表示

set showcmd " 打ったコマンドをステータスラインの下に表示
set ruler " ステータスラインの右側にカーソルの現在位置を表示する


" ### START PlUG-IN ###
if has('vim_starting')
    " 初回起動時のみruntimepathにNeoBundleのパスを指定する
    set runtimepath+=~/.vim/bundle/neobundle.vim/

    " NeoBundleが未インストールであればgit cloneする・・・・・・①
    if !isdirectory(expand("~/.vim/bundle/neobundle.vim/"))
        echo "install NeoBundle..."
        :call system("git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim")
    endif
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" ### NEO BUNDLE ###
NeoBundleFetch 'Shougo/neobundle.vim' " ADMIN ALL NEOBUNDLE

NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\}

NeoBundle 'vim-scripts/twilight'
NeoBundle 'scrooloose/nerdtree' " NERD TREEを使えるように
NeoBundle 'mattn/emmet-vim' " html:5 で補完.
NeoBundle 'itchyny/lightline.vim' " ステータスラインの表示内容強化
NeoBundle 'Yggdroot/indentLine' " インデントの可視化
NeoBundle 'cohama/lexima.vim' " Complete the parental
NeoBundle 'thinca/vim-quickrun' " Complete the parental
NeoBundle 'syntastic.git' " annoying in html img
NeoBundle 'Quramy/vim-js-pretty-template'
"----------------------------------------------------------
call neobundle#end()
" ファイルタイプ別のVimプラグイン/インデントを有効にする
filetype plugin indent on

" 未インストールがあるかチェック
NeoBundleCheck

" PathoGen Settings
execute pathogen#infect()
" styntatic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

""
" PHP Lint 
nmap ,l :call PHPLint()<CR>
"
"  PHPLint
"  
"  @author halt feits <halt.feits at gmail.com>
"  
function PHPLint()
    let result = system( &ft . ' -l ' . bufname("") )
    echo result
endfunction


map <silent> <C-l> :NERDTreeToggle<CR>

" insert to normal by jj
imap jj <Esc>
