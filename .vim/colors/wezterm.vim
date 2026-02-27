hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "wezterm"

set termguicolors

" Base
hi Normal guifg=#CBE0F0 guibg=#011423
hi Cursor guifg=#011423 guibg=#47FF9C
hi Visual guifg=#CBE0F0 guibg=#033259
hi LineNr guifg=#FFE073 guibg=#011423

" Syntax
hi Comment guifg=#44FFB1 gui=italic
hi Constant guifg=#0FC5ED
hi Identifier guifg=#A277FF
hi Statement guifg=#E52E2E
hi PreProc guifg=#24EAF7
hi Type guifg=#FFE073
hi String guifg=#44FFB1
hi Function guifg=#A277FF
hi Keyword guifg=#E52E2E
hi Operator guifg=#24EAF7
hi Special guifg=#24EAF7
hi Delimiter guifg=#CBE0F0
hi Boolean guifg=#FFE073
hi Number guifg=#FFE073
