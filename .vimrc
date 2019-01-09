syntax on
colorscheme zellner
set nu rnu hls is nosol ts=4 sw=4 ch=2 sc mouse=a
filetype indent plugin on

if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

autocmd BufNewFile,BufRead * syntax keyword Repeat FOR REP
autocmd BufNewFile,BufRead * syntax keyword Type LL VLL VI VVI PII
highlight Search ctermfg=white
highlight MatchParen ctermfg=white
