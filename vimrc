
"""""""""""""""""""""""
" Cases, colors, syntax
"""""""""""""""""""""""

set ignorecase           " Ignore case when searching
set smartcase            " When searching try to be smart about cases
set hlsearch             " Highlight search results
set incsearch            " Makes search act like search in modern browsers 
set lazyredraw           " Don't redraw while executing macros (good performance config) 
set magic                " For regular expressions turn magic on
set showmatch            " Show matching brackets when text indicator is over them
syntax enable            " Enable syntax highlighting
set number               " Enable line numbers
set ruler                " Enable line + col number
set showtabline=2        " Show tabline
set background=light

"""""""""""""""""""""""
" Solarized color theme
"""""""""""""""""""""""

" From Solarized's website:
" > If you are going to use Solarized in Terminal mode (i.e. not in a GUI version
" > like gvim or macvim), please please please consider setting your terminal 
" > emulator's colorscheme to used the Solarized palette. [...] If you use 
" > Solarized without these colors, Solarized will need to be told to degrade its
" > colorscheme to a set compatible with the limited 256 terminal palette (whereas
" > by using the terminal's 16 ansi color values, you can set the correct, 
" > specific values for the Solarized palette).

" The following option, when enabled, tells solarized to degrade to a 8-bit
" color palette (256 colors)
" let g:solarized_termcolors=256

" The following option, when enabled, tells solarized to use the terminal's own
" background color. This is required when using the patched version of the 
" patched iTerm2 Solarized Dark color scheme, which addresses issues with 
" invisible output from tools such as 'mocha' and 'yeoman'.
let g:solarized_termtrans=1

colorscheme solarized

"""""""""""""""""""""
" Gruvbox color theme
"""""""""""""""""""""

" set termguicolors     " Enables 24-bit color mode (true-color / full-color)
" colorscheme gruvbox

"""""""""
" History
"""""""""

set history=1000         " Remember more commands and search history
set undolevels=1000      " Use many muchos levels of undo

""""""""""
" Behavior
""""""""""

set title                " Change the terminal's title
set visualbell           " Don't beep
set noerrorbells         " Don't beep
set nobackup             " No backup file
set noswapfile           " No swap file

""""""""""
" Encoding
""""""""""

set encoding=utf-8       " Set default encoding to UTF-8

""""""""""""""""""""""""""
" Wrapping & line behavior
""""""""""""""""""""""""""

set lbr                  " Only wrap at specific characters
set tw=0                 " Auto wrap at 80 chars -- DISABLED
set wm=0                 " Auto wrap at X characted from right border -- DISABLED
set wrap                 " Wrap lines visually rather than actually modifying the buffer

"""""""""""""
" Indentation
"""""""""""""

set expandtab            " Use spaces instead of tabs
set shiftwidth=2         " Set indentation behavior
set softtabstop=2        " Set width of soft tabs (2 spaces)
set tabstop=2            " Set width of <tab> (2 spaces)
set ai                   " Indent as previous line
" set si                   " Automatically (in|de)crease indentation -- DISABLED

"""""""""""
" Backspace
"""""""""""

set backspace=indent,eol,start

