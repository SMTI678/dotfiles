set nu rnu hls is nosol ts=4 sw=4 ch=2 sc autoindent
filetype indent plugin on
syntax on

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

colorscheme zellner

autocmd BufNewFile,BufRead * syntax keyword Repeat FOR REP
autocmd BufNewFile,BufRead * syntax keyword Type vector tuple pair array deque set multiset unordered_set map unordered_map priority_queue
autocmd BufNewFile,BufRead * syntax keyword Constant D I nl inf inf_l cerr
