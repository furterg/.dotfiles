"Install and configure Vundle for plugins handling
set nocompatible              " be iMproved, required
filetype on
let g:pymode_python = 'python3'
let g:UltiSnipsNoPythonWarning = 1
"
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Lokaltog/powerline'
"Powerline fonts plugin

"install i3 config syntax
Plugin 'mboughaba/i3config.vim'

Bundle 'ervandew/supertab'
Bundle 'sirver/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Bundle 'honza/vim-snippets'

Bundle 'ycm-core/YouCompleteMe'
"if executable('latexmk')
	Plugin 'lervag/vimtex'
"endif
Plugin 'ekalinin/Dockerfile.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
"filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on


" configure Powerline plugin
"set rtp+=/usr/share/powerline/bindings/vim
set laststatus=2
"""""""""""" Start Powerline Settings """"""""""""""""

" set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

if has("gui_running")
    let s:uname = system("uname")
    if s:uname == "Darwin\n"
        set guifont=Source\ Code\ Pro\ for\ Powerline:h15
        colorscheme PaperColor              " set color scheme
    endif
endif

""""""""""" END of PowerLine Settings  """""""""""""""
"" AirLine settings
"=====================================================
let g:airline_theme='badwolf'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_powerline_fonts=1

"=====================================================


" remove empty angle at the end
let g:airline_skip_empty_sections = 1
" set airline theme
"let g:airline_theme='deus'
" extension for tab line
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#formatter = 'unique_tail'


" make YCM compatible with UltiSnips (using supertab)
"let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
"let g:SuperTabDefaultCompletionType = '<C-n>'

" Plugin Config - ultisnips {{{ "
"if filereadable(expand("~/.vim/bundle/ultisnips/plugin/UltiSnips.vim"))
	let g:UltiSnipsListSnippets = "<F5>"
	let g:UltiSnipsEditSplit="vertical"
	let g:UltiSnipsExpandTrigger = "<Enter>"
	let g:UltiSnipsJumpForwardTrigger = "<Enter>"
	let g:UltiSnipsJumpBackwardTrigger = "<S-Enter>"
"	let g:UltiSnipsEditSplit = "context"
"let g:UltiSnipsSnippetDirectories=["UltiSnips"]
	"call mkdir($HOME . "/.vim/bundle/UltiSnips", "p")
	let g:UltiSnipsSnippetsDir = $HOME . "/.vim/bundle/vim-snippets/UltiSnips"
"endif
autocmd FileType md UltiSnipsAddFiletypes markdown
" }}} Plugin Config - ultisnips "


"Plugin 'lervag/vimtex'
let g:vimtex_compiler_method = 'latexmk'
let g:vimtex_compiler_latexmk_engines = 'xelatex'
let g:tex_flavor='latex'
let g:vimtex_view_method='skim'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

" Active la vérification d'orthographe avec mise en surbrillance et CTRL+l pour corriger
" automatiquement.
setlocal nospell
set spelllang=fr,en_gb
set spellfile=$HOME/Dropbox/Applications/vim/spell/amc.utf-8.add
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"--------------------------------------------------------------------------------


" Must have options {{{1
"
" These are highly recommended options.
 
" Vim with default settings does not allow easy switching between multiple files
" in the same editor window. Users can use multiple split windows or multiple
" tab pages to edit multiple files, but it is still best to enable an option to
" allow easier switching between files.
"
" One such option is the 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also allows
" you to keep an undo history for multiple files when re-using the same window
" in this way. Note that using persistent undo also lets you undo in multiple
" files even in the same window, but is less efficient and is actually designed
" for keeping undo history after closing Vim entirely. Vim will complain if you
" try to quit without saving, and swap files will keep you safe if your computer
" crashes.
" set hidden
 
" Note that not everyone likes working this way (with the hidden option).
" Alternatives include using tabs or split windows instead of re-using the same
" window as mentioned above, and/or either of the following options:
" set confirm
" set autowriteall
 
" Better command-line completion
set wildmenu
 
" Show partial commands in the last line of the screen
set showcmd
 
" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch
set is
set incsearch
 
" Modelines have historically been a source of security vulnerabilities. As
" such, it may be a good idea to disable them and use the securemodelines
" script, <http://www.vim.org/scripts/script.php?script_id=1876>.
" set nomodeline
 

"------------------------------------------------------------
" Usability options {{{1
"
" These are options that users frequently set in their .vimrc. Some of them
" change Vim's behaviour in ways which deviate from the true Vi way, but
" which are considered to add usability. Which, if any, of these options to
" use is very much a personal preference, but they are harmless.
 
" Use case insensitive search, except when using capital letters
" set ignorecase
" set smartcase
 
" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start
 
" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent smartindent lbr colorcolumn=70
 
" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline
 
" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler
 
" Always display the status line, even if only one window is displayed
set laststatus=2
 
" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm
 
" Use visual bell instead of beeping when doing something wrong
set visualbell
 
" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
" set t_vb=
 
" Enable use of the mouse for all modes
set mouse=r
 
" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2
 
" Display hybrid line numbers on the left absolute line number in insert mode.
:set number relativenumber

:augroup numbertoggle
:autocmd!
:autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END
 
" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200
 
" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>
 

"------------------------------------------------------------
" Indentation options {{{1
"
" Indentation settings according to personal preference.
 
" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
" set shiftwidth=4
" set softtabstop=4
" set expandtab
 
" Indentation settings for using hard tabs for indent. Display tabs as
" four characters wide.
set shiftwidth=4
set tabstop=4
set list wrap
set listchars=eol:¶,trail:·,tab:-»
set scrolloff=3
 
"------------------------------------------------------------
" Mappings {{{1
"
" Useful mappings
 
" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$
 
" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>
nnoremap n nzz
nnoremap N Nzz
" Map F7 to , and F9 to ; to move forward and backward when searching char on
" a line
noremap <F7> ,
noremap <F9> ;
 
" Useful remapping
" Press ;; to start a prefiled search command with : as separator
noremap ;; :%s:\v::g<Left><Left><Left>
" Remap § to @
nnoremap § @
vnoremap § @
" Raccourci pour lancer les macros qui s'appliquent sur la selection en mode visuel
vnoremap ;a :normal @a
vnoremap ;c dO\begin{center}po\end{center}
noremap ;e @e
vnoremap ;h :normal @h
vnoremap ;o :normal @o
nnoremap ;m @v?\\element/\[o\]3x?\\element0@m@e
noremap ;q :normal @q
nnoremap ;v @v

"------------------------------------------------------------
"Macros 
"@a : TXT to AMC
"@b : Bold
"@c : Wrong to correct
"@d :
"@e : Next \element
"@h : Switch choices / choiceshoriz
"@i : Italic
"@m : Multicols
"@q : question <=> questionmult
"@u : Underline
"@v : choiceshoriz <=> choices

"Macro qui converti une liste de question format word en format LaTeX AMC
let @a =':%s:\v^\s+::g:%s:\v^(\w[\.\)-]) \*:*\1 :g:%s:^Tr\?u\?e\?\s*$:a.\t*True\rb.\tFalse:ge:%s:^Fa\?l\?s\?e\?\s*$:a.\tTrue\rb.\t*False:ge:%s:\([\$&%#_{}\\\^]\):\\\1:ge:%s:\~:\\textasciitilde{}:ge:%s:^[\s+\t+]*(*\(\w[\.)\-]\)[\s\t]*\*:*\1:ge:%s:^[\s\t]*\(\d\+\)[-\.)][\s\+\t\+]*\(.*\):\t\\end{choices}\r\t\\end{question}\r}\r\\element{groupA}{\r\t\\begin{question}{Q\1}\r\2\r\t\\begin{choices}:ge:%s:^[\s\t]*[\*+][\s\+\t\+]*(*\a[\.)\-]\s*\t*\(.*\):\t\t\\correctchoice{\1}:ge:%s:^[\s\+\t\+]*(*\a[\.)\-]\s*\t*\(.*\):\t\t\\wrongchoice{\1}:ge:g/^\s*$/d:%s: *\t*}:}:ge:%s:{ *:{:ge:%s:{question}{Q\(\d\)}:{question}{Q0\1}:ge:%s:{question}{Q\(\d\d\)}:{question}{Q0\1}:ge:%s:\c^\s\+\\\(wrongchoice\|correctchoice\){\(Aucune\?\|Tout\?e\?s\|All \(of\|the\)\|None of\|No answer\):\t\t\\lastchoices %Stop shuffling next choices\r\t\t\\\1{\2:ge:%s:\s\([:?]\s*}\?\)\s*$:\~\1:ge:%s:\(\d\)\s\([\$€]\):\1\~\2:ge :%s:\(\d\+\)\s\+\(p\|P\)oint:\1\~\2oint:ge:%s:\(\d\+\)\s\(\d\{3\}\):\1\~\2:ge:%s:\s\+»:\~»:ge :%s:«\s\+:«\~:ge@z:%s:\t\\begin{choices}\n\t\t\\\(wrongchoice\|correctchoice\){\(Vrai\|Yes\|Oui\|True\|Faux\|False\|No\|Non\)\(\.\?\)}\n\t\t\\\(wrongchoice\|correctchoice\){\(Faux\|False\|No\|Non\|Vrai\|Yes\|Oui\|True\)\(\.\?\)}\n\t\\end{choices}:\t\\begin{choiceshoriz}[o]\r\t\t\\\1{\2\3}\r\t\t\\\4{\5\6}\r\t\\end{choiceshoriz}:ge:nohlsGo%\elementgg'

"Bold (visual mode)
let @b = 'c{\bf }P'

"Macros pour inverser une réponse juste/fausse
function! SwitchChoices()
	normal 0/\v(\\wrongchoice\{|\\correctchoice\{):s//\={"\\wrongchoice{":"\\correctchoice{","\\correctchoice{":"\\wrongchoice{"}[submatch(1)]/
endfunction
"let @c = ':s:\\wrongchoice:\\correctchoice::noh'
let @c = ':call SwitchChoices()'

"aller à la balise '\element' suivante
let @e = '/\\element0zz'

"choiceshoriz (visual mode)
"let @h = ':%s:{choices}:{choiceshoriz}:ge:s:\s*\\begin{multicols}{\d}\s*\n::eg:s:\s*\\end{multicols}\n::ge:noh'
function! SwitchHoriz()
	normal $?elementmbN2kme'b/\v(\{choices\}|\{choiceshoriz\}):'b,'e s//\={"{choices}":"{choiceshoriz}","{choiceshoriz}":"{choices}"}[submatch(1)]/
endfunction

let @h = ':call SwitchHoriz()@e'

"Mettre le texte sélectionné en italique (visual mode)
let @i = 'c\textit{}P'

"Je ne sais pas
let @j = ':%s:\\wrongchoice{je ne sais pas\.\?}:&\\scoring{0}:gei'

"classlist from CURSUS to CSV
let @k = 'gg:%s:\v^\D.*$\n::geggVG:sort u:%s:\v^$\n::ge:%s:\t:,:ge:%s:\(\a\),\(\a\):\1 \2:ge ggOcodelev,name'
"Lastchoice sur la ligne du dessus
let @l = 'O\lastchoices %Stop shuffling next choices@e'

"Mettre la question sur deux colonnes
let @m = '$?element/.*begin{choices}O\begin{multicols}{2}j/.*end{question.*O\end{multicols}j:noh@e'

"Notes BS
let @n = ':%s:\v(\d),(\d):\1.\2:ge:%s:\t:,:ge:%s:\v^(\d+),\p+,(\p+):\1,\2:ge:%s:$:,#:geggOOrgDefinedId,Final Exam Points Grade,End-of-Line Indicator'

"Macro pour mettre une question à l'horizontale sans mélange (visual mode)
let @o = '$?element{/begin{choices}A[o]:call SwitchHoriz()@e'
"let @o = ':s:{choices}:{choiceshoriz}:ge:s:\\begin{choiceshoriz}:\\begin{choiceshoriz}[o]:ge:noh'

"Macro pour mettre une question à l'horizontale sans mélange (visual mode)
let @q = 'ddkO\begin{center}\end{center}kVp:s:\v\t+$::e:s:\v[\t\~]+\?: \\qquad  \\qquad  \\qquad ?:ge:s:\v\t+: \\qquad  \\qquad :ge14jzz'

"Switch types of questions between question and questionmult.
function! SwitchTypes()
	normal $?elementmbN2kme'b/\v(\{question\}|\{questionmult\}):'b,'e s//\={"{question}":"{questionmult}","{questionmult}":"{question}"}[submatch(1)]/
endfunction

let @t = ':call SwitchTypes()@e'

"Underline
let @u = 'c\ul{}P'

"Mettre la question en mode vertical (normal)
let @v = '/{choiceshoriz}lcwchoices/{choiceshoriz}lcwchoices:noh'

"Macro pour mettre une tabulation entre deux chiffres d'une réponse (AUDENCIA)
let @w = ':s:\v(\d)\t(-?\d):\1 \\qquad \2:ej'

"Save  and source .vimrc
let @x = ':w:so ~/.vimrc:noh'

"set an answer as being LaTeX Maths
let @y = '0f}mici{$$Pvi{:s:(:\\left(:ge`ivi{:s:):\\right):ge`ivi{:s:√:\\sqrt{:ge`ivi{:s:π:\\pi{}:ge'

"Macro qui déplace les 3 premières ligne du fichier à la fin. Appelée depuis la macro a
let @z = 'gg3ddGp' 

"let @w = ':s:\\correctchoice:\\wrongchoice::noh'

"------------------------------------------------------------
" URL: http://vim.wikia.com/wiki/Example_vimrc
" Authors: http://vim.wikia.com/wiki/Vim_on_Freenode
" Description: A minimal, but feature rich, example .vimrc. If you are a
"              newbie, basing your first .vimrc on this file is a good choice.
"              If you're a more advanced user, building your own .vimrc based
"              on this file is still a good idea.
 
"------------------------------------------------------------
" Features {{{1
"
" These options and commands enable some very useful features in Vim, that
" no user should have to live without.
 
" Enable syntax highlighting
syntax on

" Set the line to be highlighted (underlines) when in insert mode
:autocmd InsertEnter,InsertLeave * set cul!

