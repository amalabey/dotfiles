
let mapleader = "'"
nnoremap <leader>so :source ~/.vimrc<CR>
nnoremap <leader>tm :terminal<CR>  
map <F6> :let $VIM_DIR=expand('%:p:h')<CR>:terminal<CR>cd $VIM_DIR<CR>

" Basics
set encoding=utf-8
set relativenumber
set clipboard=unnamed
set expandtab tabstop=4 shiftwidth=4
set ignorecase
set smartcase
set incsearch
set hlsearch
set cursorline
"set shell=powershell
set autochdir 
set splitbelow
set splitright

" Disable beeping
set noerrorbells
set novisualbell
set belloff=all
 
" No swap files needed
set nobackup       "no backup files
set nowritebackup  "only in case you don't want a backup file while editing
set noswapfile     "no swap files
 
" No wrapping
set nowrap

" GUI stuff
if has("gui_running")
    if has("gui_gtk2")
        set guifont=Inconsolata\ 12
    elseif has("gui_macvim")
        set guifont=Menlo\ Regular:h14
    elseif has("gui_win32")
        set linespace=7
        " initial launch size
        :set lines=50 columns=120
        :set guifont=Consolas:h11:cANSI
        " PRESENTING
        "set linespace=5
        ":set guifont=Source\ Code\ Variable\
        ":set guifont=Source\ Code\ Pro:h10:cDEFAULT:qDEFAULT
        :set guioptions-=m  "remove menu bar
        :set guioptions-=T  "remove toolbar
        :set guioptions-=r  "remove right-hand scroll bar
        :set guioptions-=R  "remove right-hand scroll bar
        :set guioptions-=l  "remove left-hand scroll bar
        :set guioptions-=L  "remove left-hand scroll bar
        :set guioptions-=b  "remove bottom scroll bar
        :set guioptions-=e  "don't use gui tabs
        :set guioptions-=F  "don't use a footer
        " Gvim Fullscreen
        map <F11> <Esc>:call libcallnr("gvimfullscreen_64.dll", "ToggleFullScreen", 0)<CR>
    endif
endif

set background=dark
"colorscheme PaperColor

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/vimfiles/plugged')

" BASIC PLUGINS GLOBALLY USEFUL
" Tpops basic sensible vim setting
Plug 'tpope/vim-sensible'

" Make sure you use single quotes
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Highlight and clear trailing white spaces
Plug 'bronson/vim-trailing-whitespace'

" Indentation Guides
"Plug 'yggdroot/indentline'

" Multiple cursor support for editing multiple things at once
Plug 'terryma/vim-multiple-cursors'

" Zoom fonts
Plug 'vim-scripts/zoom.vim'

" Airline
Plug 'bling/vim-airline'

" Highlight the Yanks
Plug 'machakann/vim-highlightedyank'

" Fuzzy file finder
Plug 'mileszs/ack.vim'

" Dispatch asynchronous commands
Plug 'tpope/vim-dispatch'
" async run mostly equal to dispatch, just trying
Plug 'skywind3000/asyncrun.vim'

" Autoformat
Plug 'Chiel92/vim-autoformat'

" Completion
Plug 'valloric/youcompleteme'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Fuzzy File Navigation
Plug 'kien/ctrlp.vim'

" Git Stuff
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'

" Unimpaired
Plug 'tpope/vim-unimpaired'

"Exchange text between two places
Plug 'tommcdo/vim-exchange'

" Git status in the Gutter
Plug 'airblade/vim-gitgutter'

" Surround
Plug 'tpope/vim-surround'

" Commenting Helper
Plug 'scrooloose/nerdcommenter'

" Tab Completion for Snippets & Completion
Plug 'ervandew/supertab'

" Syntastic: Syntax checkers
Plug 'scrooloose/syntastic'

" Snippets
" Track the engine.
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

" Tab Management
Plug 'kien/tabman.vim'

" LANGUAGE HELPER VIM PLUGINS
" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Typescript
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi', { 'do': 'npm install -g typescript' }

" Scss
Plug 'cakebaker/scss-syntax.vim'

" SALT
Plug 'saltstack/salt-vim'

Plug 'prettier/vim-prettier', {
            \ 'do': 'npm install',
            \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss'] }

" C# Omnisharp
Plug 'OmniSharp/omnisharp-vim'

" Test runner for vim
Plug 'janko-m/vim-test'

" Try to run vim-test tests on tmux
Plug 'benmills/vimux'

" Html Math Tags
Plug 'valloric/matchtagalways'

" Edit vim json support
" Otherwise with indentLine working, quotes disappear in json files
Plug 'elzr/vim-json'

" Docker file syntax
Plug 'ekalinin/Dockerfile.vim'

" Toml
Plug 'cespare/vim-toml'

" php
Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" Python
Plug 'zchee/deoplete-jedi'
" My work
"Plug 'amilsil/vim-dotnet'
Plug 'pprovost/vim-ps1'

" Interacting with databases
Plug 'tpope/vim-dadbod'
" Insert uuids
Plug 'kburdett/vim-nuuid'


" Initialize plugin system
call plug#end()

" Global Plugin Config
noremap <leader>f :Autoformat<CR>
noremap <leader>nf :NERDTreeFind<CR>
noremap <leader>nt :NERDTreeToggle<CR>
noremap <leader>l :CtrlP<CR>
noremap <leader>b :CtrlPBuffer<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-t> :tabnew<CR>
nnoremap <C-c> :tabclose<CR>
tnoremap <C-tab>  <C-\><C-N>:tabnext<CR>
tnoremap <C-S-tab> <C-\><C-N>:tabprevious<CR>
tnoremap <C-t> <C-\><C-N>:tabnew<CR>
nmap t% :tabedit %<CR>

" airline configuration
"let g:airline_left_sep = '???'
"let g:airline_left_alt_sep = '???'
"let g:airline_right_sep = '???'
"let g:airline_right_alt_sep = '???'
"let g:airline_symbols = {}
"let g:airline_symbols.branch = '???'
"let g:airline_symbols.readonly = '???'
"let g:airline_symbols.linenr = '???'
"let g:airline_symbols.maxlinenr = '???'

" Vim Test configuration
" these "Test mappings" work well when Caps Lock is mapped to Ctrl
" make test commands execute using dispatch.vim
"let test#strategy = "dispatch"
"let test#strategy = 'vimterminal'
"let test#filename_modifier = ':p' " /User/janko/Code/my_project/test/models/user_test.rb
let test#csharp#runner = 'DotnetTest'

nmap <silent> <leader>tn :TestNearest<CR>
nmap <silent> <leader>tf :TestFile<CR>
nmap <silent> <leader>ts :TestSuite<CR>
nmap <silent> <leader>tl :TestLast<CR>
nmap <silent> <leader>tv :TestVisit<CR>
let test#filename_modifier = ':~'
let g:test#preserve_screen = 1

" NERD Tree Settings
let NERDTreeShowHidden=1
let g:NERDTreeWinSize=40
" Ignore C# build folders
let NERDTreeIgnore=['bin$[[dir]]', 'obj$[[dir]]', '\.vs$[[dir]]', '\~$']

" Completion Settings
" make YCM compatible with UltiSnips (using supertab)
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:SuperTabCrMapping = 0
let g:UltiSnipsExpandTrigger           = '<tab>'
let g:UltiSnipsJumpForwardTrigger      = '<tab>'
let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']

" better key bindings for UltiSnipsExpandTrigger
" Snippets Directory
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']

" Snippets Config
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" Typescript stuff
augroup typscript
    let g:tsuquyomi_single_quote_import=1
    autocmd FileType typescript nmap <buffer> <Leader>e <Plug>(TsuquyomiRenameSymbol)
    autocmd FileType typescript nmap <buffer> <Leader>i <Plug>(TsuquyomiImport)
    autocmd FileType typescript nmap <buffer> gd <Plug>(TsuquyomiDefinition)
    autocmd FileType typescript nmap <buffer> <leader>fu <Plug>(TsuquyomiReferences)
augroup END

" Ctrlp ignore
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git|bin\|lib\'

" GUI stuff
if has("gui_running")
    if has("gui_gtk2")
        set guifont=Inconsolata\ 12
    elseif has("gui_macvim")
        set guifont=Menlo\ Regular:h14
    elseif has("gui_win32")
        set linespace=5
        " initial launch size
        :set lines=50 columns=120
        ":set guifont=Consolas:h10.1:cANSI
        " PRESENTING
        "set linespace=5
        ":set guifont=Source\ Code\ Variable\
        "Regular:h12:cDEFAULT:qCLEARTYPE
        "set guifont=Source\ Code\ Pro:h9:cDEFAULT:qCLEARTYPE
        :set guioptions-=m  "remove menu bar
        :set guioptions-=T  "remove toolbar
        :set guioptions-=r  "remove right-hand scroll bar
        :set guioptions-=R  "remove right-hand scroll bar
        :set guioptions-=l  "remove left-hand scroll bar
        :set guioptions-=L  "remove left-hand scroll bar
        :set guioptions-=b  "remove bottom scroll bar
        :set guioptions-=e  "don't use gui tabs
        :set guioptions-=F  "don't use a footer
        " Gvim Fullscreen
        map <F11> <Esc>:call libcallnr("gvimfullscreen_64.dll", "ToggleFullScreen", 0)<CR>
    endif
endif

" Indent Guide Configuration
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '??'
let g:indentLine_char = '??'

" vim json config
let g:vim_json_syntax_conceal = 0

" Prettier settings
let g:prettier#config#bracket_spacing = 'true'

" Omnisharp Configuration
"
" OmniSharp won't work without this setting
filetype plugin on

" should install imnisharp roslyn http here :)
if has("gui_win32")
    let g:OmniSharp_server_path = 'C:\sw\omnisharp.http-win-x64\OmniSharp.exe'
endif

" don't start yourself
let g:Omnisharp_start_server = 1
"let g:Omnisharp_port = 2000
let g:OmniSharp_timeout = 5
let g:OmniSharp_use_random_port = 1
" User ctrl+p for completion
let g:OmniSharp_selector_ui = 'ctrlp'  " Use ctrlp.vim
set completeopt=longest,menuone,preview
" Set the path to the roslyn server

" Set the type lookup function to use the preview window instead of echoing it
"let g:OmniSharp_typeLookupInPreview = 1

" Timeout in seconds to wait for a response from the server

" Don't autoselect first omnicomplete option, show options even if there is only
" one (so the preview documentation is accessible). Remove 'preview' if you
" don't want to see any documentation whatsoever.
"set completeopt=longest,menuone,preview

" Fetch full documentation during omnicomplete requests.
" There is a performance penalty with this (especially on Mono).
" By default, only Type/Method signatures are fetched. Full documentation can
" still be fetched when you need it with the :OmniSharpDocumentation command.
"let g:omnicomplete_fetch_full_documentation = 1
" Use a random port to service different code repos
" Set desired preview window height for viewing documentation.
" You might also want to look at the echodoc plugin.
set previewheight=5

" Get code issues and syntax errors
let g:syntastic_cs_checkers = ['code_checker']
let g:syntastic_typescript_checkers = ['tsuquyomi', 'tslint']
" Syntastic puts errors in locations list, which enable lnext, lprev
" navigation
let g:syntastic_always_populate_loc_list = 1

augroup omnisharp_commands
    autocmd!

    " Synchronous build (blocks Vim)
    "autocmd FileType cs nnoremap <buffer> <F5> :wa!<CR>:OmniSharpBuild<CR>
    " Builds can also run asynchronously with vim-dispatch installed
    autocmd FileType cs nnoremap <buffer> <Leader>ob :wa!<CR>:OmniSharpBuildAsync<CR>
    " Automatic syntax check on events (TextChanged requires Vim 7.4)
    autocmd BufEnter,TextChanged,InsertLeave *.cs SyntasticCheck

    " Show type information automatically when the cursor stops moving
    autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()

    " The following commands are contextual, based on the cursor position.
    autocmd FileType cs nnoremap <buffer> gd :OmniSharpGotoDefinition<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fi :OmniSharpFindImplementations<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fs :OmniSharpFindSymbol<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fu :OmniSharpFindUsages<CR>

    " Finds members in the current buffer
    autocmd FileType cs nnoremap <buffer> <Leader>fm :OmniSharpFindMembers<CR>

    " Cursor can be anywhere on the line containing an issue
    autocmd FileType cs nnoremap <buffer> <Leader>x  :OmniSharpFixIssue<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fx :OmniSharpFixUsings<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>tt :OmniSharpTypeLookup<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>dc :OmniSharpDocumentation<CR>

    " Navigate up and down by method/property/field
    autocmd FileType cs nnoremap <buffer> <C-k> :OmniSharpNavigateUp<CR>
    autocmd FileType cs nnoremap <buffer> <C-j> :OmniSharpNavigateDown<CR>
augroup END

" Contextual code actions (uses fzf, CtrlP or unite.vim when available)
nnoremap <Leader><Space> :OmniSharpGetCodeActions<CR>
" Run code actions with text selected in visual mode to extract method
xnoremap <Leader><Space> :call OmniSharp#GetCodeActions('visual')<CR>

" Rename with dialog
nnoremap <Leader>nm :OmniSharpRename<CR
nnoremap <F2> :OmniSharpRename<CR>
" Rename without dialog - with cursor on the symbol to rename: `:Rename newname`
command! -nargs=1 Rename :call OmniSharp#RenameTo("<args>")

" Force OmniSharp to reload the solution. Useful when switching branches etc.
nnoremap <Leader>rl :OmniSharpReloadSolution<CR>
nnoremap <Leader>cf :OmniSharpCodeFormat<CR>
" Load the current .cs file to the nearest project
nnoremap <Leader>tp :OmniSharpAddToProject<CR>

" Start the omnisharp server for the current solution
nnoremap <Leader>ss :OmniSharpStartServer<CR>
nnoremap <Leader>sp :OmniSharpStopServer<CR>

" Add syntax highlighting for types and interfaces
nnoremap <Leader>th :OmniSharpHighlightTypes<CR>

" Enable snippet completion
" let g:OmniSharp_want_snippet=1

" Golang
autocmd FileType go nmap <leader>m <Plug>(go-build)
autocmd FileType go nmap <leader>r <Plug>(go-run)
autocmd FileType go nmap <leader>t <Plug>(go-test)
autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
autocmd FileType go nmap <Leader>a <Plug>(go-alternate)

"Ack Settings
noremap <Leader>s :Ack <cword><cr>

"Terminal
"nnoremap <leader>tm :terminal powershell<CR>

" Different background color for 80 charactors onwards
let &colorcolumn=join(range(121,121),".")
"let &colorcolumn="80,".join(range(120,999),",")

" Prettier Settings
let g:prettier#config#tab_width = 2

" Map fast scroll up and down
nnoremap <S-j> 5j
nnoremap <S-k> 5k

let NERDTreeShowBookmarks=1
