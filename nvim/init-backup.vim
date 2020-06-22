call plug#begin(stdpath('data').'/plugged')
" color
Plug 'rakr/vim-one'

" guid control
"Plug 'webdevel/tabulous'
"Plug 'scrooloose/nerdtree'
"Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
"Plug 'jiangmiao/auto-pairs'
"Plug 'preservim/nerdcommenter'

" golang
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plug 'junegunn/fzf.vim'
"Plug 'fatih/vim-go', { 'tag': '*' }
" enable syntax highlighting 
"let g:go_highlight_types = 1
"let g:go_highlight_fields = 1
"let g:go_highlight_functions = 1
"let g:go_highlight_function_calls = 1
"let g:go_highlight_operators = 1
"let g:go_highlight_extra_types = 1
"let g:go_highlight_build_constraints = 1

" dockerfile syntax
"Plug 'ekalinin/Dockerfile.vim'

" javascript
"Plug 'othree/yajs.vim'
"Plug 'pangloss/vim-javascript'
"Plug 'mxw/vim-jsx'
"Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }

" airline
"Plug 'vim-airline/vim-airline'
"let g:airline_theme='one'
"let g:airline#extensions#tabline#enabled = 1
""let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#formatter = 'unique_tail'
"let g:airline_powerline_fonts = 1
"Plug 'tpope/vim-fugitive'
"let g:airline#extensions#branch#enabled = 1

"" JENKINS
"Plug 'martinda/Jenkinsfile-vim-syntax'
call plug#end()

"---------------------------------------------------------------------------------------------------
"   " color scheme
"---------------------------------------------------------------------------------------------------

"Credit joshdick
""Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX
"check and use tmux's 24-bit color support
""(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more
"information.)
"if (empty($TMUX))
  "if (has("nvim"))
    "let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  "endif
  "if (has("termguicolors"))
    "set termguicolors
  "endif
"endif"

"set termguicolors 
"let $NVIM_TUI_ENABLE_TRUE_COLOR=1
colorscheme "one"
"set background=dark
"let g:one_allow_italics = 1
"hi Normal guibg=NONE ctermbg=NONE


":set number relativenumber

":augroup numbertoggle
":  autocmd!
":  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
":  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
":augroup END

""  " coc.nvim default settings
""  -------------------------------------------------------------------------------------------------
"" if hidden is not set, TextEdit might fail.
"set hidden
"" Better display for messages
"set cmdheight=2
"" Smaller updatetime for CursorHold & CursorHoldI
"set updatetime=300
"" don't give |ins-completion-menu| messages.
"set shortmess+=c
"" always show signcolumns
"set signcolumn=yes


"let mapleader = ","
"" Use tab for trigger completion with characters ahead and navigate.
"" Use command ':verbose imap <tab>' to make sure tab is not mapped by other
"" plugin.
"inoremap <silent><expr> <TAB>
        "\ pumvisible() ? "\<C-n>" :
        "\ <SID>check_back_space() ? "\<TAB>" :
	"\ coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

"function! s:check_back_space() abort
    "let col = col('.') - 1
    "return !col || getline('.')[col - 1]  =~# '\s'
"endfunction

"" Use <c-space> to trigger completion.
"inoremap <silent><expr> <c-space> coc#refresh()
""
"" Use `[c` and `]c` to navigate diagnostics
"nmap <silent> [c <Plug>(coc-diagnostic-prev)
"nmap <silent> ]c <Plug>(coc-diagnostic-next)

"" Remap keys for gotos
"nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)

"" Use U to show documentation in preview window


"" Remap for rename current word
"nmap <leader>rn <Plug>(coc-rename)

"" Remap for format selected region
"vmap <leader>f  <Plug>(coc-format-selected)
"nmap <leader>f  <Plug>(coc-format-selected)
"" Show all diagnostics
"nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
"" Manage extensions
"nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
"" Show commands
"nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
"" Find symbol of current document
"nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
"" Search workspace symbols
"nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
"" Do default action for next item.
"nnoremap <silent> <space>j  :<C-u>CocNext<CR>
"" Do default action for previous item.
"nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
"" Resume latest coc list
"nnoremap <silent> <space>p  :<C-u>CocListResume<CR>


"" spaces & tabs
"set tabstop=2       " number of visual spaces per TAB
"set softtabstop=2   " number of spaces in tab when editing
"set shiftwidth=2    " number of spaces to use for autoindent
"set expandtab       " tabs are space
"set autoindent
"set copyindent      " copy indent from the previous line

"" UI configs
"set number 
"set showcmd
"set cursorline
"set showmatch
"set laststatus=2
"set nobackup
"set noswapfile

"" improve esc
"inoremap jk <esc>

"inoremap <leader><c-R> :so ~/.config/nvim/init.vim

"" split navigation
"nnoremap <leader>j <c-w><c-j>
"nnoremap <leader>k <c-w><c-k>
"nnoremap <leader>l <c-w><c-l>
"nnoremap <leader>h <c-w><c-h>

"" tab navigation
"nnoremap <c-Left> :tabprevious<CR>
"nnoremap <c-Right> :tabnext<CR>

"" useful shortcuts
"" nerdtree
"nnoremap <c-n> :NERDTreeToggle<cr>
"autocmd VimEnter * if &filetype !=# 'gitcommit' | NERDTree | endif

"" GoImports
"nnoremap <M-i> :GoImports<cr>
"nnoremap <M-d> :GoDef<cr>
"nnoremap <M-t> :GoTest<cr>
"nnoremap <M-d>t :GoDefType<cr>
"nnoremap <M-j> :GoAddTags json,omitempty<cr>
"nnoremap <M-b> :GoAddTags bson,omitempty<cr>
"nnoremap <M-r> :GoRename<cr>
"nnoremap <M-e> :GoIfErr<cr>
"nnoremap <M-k> :GoKeyify<cr>
"nnoremap <M-o> :GoDecls %:p<cr>

"" set tab size on go files
"autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4 

"" execute on saving go files
"autocmd BufWritePost *.go GoImports
