":colorscheme evening
:colorscheme torte
:set hlsearch
:set ic
:set incsearch
":set softtabstop=4 expandtab
:set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

"pathogen configuration
execute pathogen#infect()

"MiniBufExpl
hi MBENormal               guifg=#808080 guibg=fg
hi MBEChanged              guifg=#CD5907 guibg=fg
hi MBEVisibleNormal        guifg=#5DC2D6 guibg=fg
hi MBEVisibleChanged       guifg=#F1266F guibg=fg
hi MBEVisibleActiveNormal  guifg=#A6DB29 guibg=fg
hi MBEVisibleActiveChanged guifg=#F1266F guibg=fg

"artigen
au BufNewFile,BufRead *.tpl                     set filetype=artigen
