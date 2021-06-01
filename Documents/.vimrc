autocmd FileType tex,groff,pdf nnoremap ZP :<c-u> !zathura %:p:r:S.pdf & disown <cr><cr>

" appearance
        syntax on
        colorscheme slate
        hi Normal guibg=NONE ctermbg=NONE
        filetype plugin indent on

" statusbar
        set laststatus=1                                                                    " turns status bar on
        set statusline+=%{wordcount().words}\ words                " wordcount

" basic settings
        set clipboard+=unnamedplus                                                " sets clipboard to global
        set mouse=a                                                                                " allows mouse usage
        set number                                                                                " sets numberline on and relative
        set wrap lbr                                                                            " wraps text
        set tabstop=2                                                                            " set tabs to two spaces
        set shiftwidth=2                                                                    " set tabs to two spaces
"        set spell spelllang=en                                                        " enables spellchecking
        set breakindent                                                                        " hanging indentation
        set splitright splitbelow                                                    " fixes splits which are normally opposite
        set wildmenu                                                                            " better tab auto-completion
        set wildmode=longest,list,full                                        " expands on wildmenu
        set foldmethod=manual                                                            " folding sets to manual use zf to fold

" autocompile LaTeX

autocmd BufWritePost *.tex :silent !xelatex %
