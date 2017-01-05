" Vim color file
" Converted from Textmate theme Monokai using Coloration v0.3.2 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
    syntax reset
endif

set t_Co=256
let g:colors_name = "mooping"


hi Normal       ctermfg=231  ctermbg=235  cterm=NONE

" Language Syntax
hi Title        ctermfg=231 ctermbg=NONE cterm=bold

hi Comment      ctermfg=243  ctermbg=NONE cterm=NONE
hi Constant     ctermfg=015  ctermbg=NONE cterm=NONE
hi String       ctermfg=215  ctermbg=NONE cterm=NONE
hi Number       ctermfg=141  ctermbg=NONE cterm=NONE
hi Character    ctermfg=141  ctermbg=NONE cterm=NONE
hi Boolean      ctermfg=141  ctermbg=NONE cterm=NONE
hi Float        ctermfg=141  ctermbg=NONE cterm=NONE

hi Identifier   ctermfg=081  ctermbg=NONE cterm=NONE
hi Function     ctermfg=081  ctermbg=NONE cterm=NONE

hi Statement    ctermfg=204  ctermbg=NONE cterm=NONE
hi Conditional  ctermfg=204  ctermbg=NONE cterm=NONE
hi Repeat       ctermfg=204  ctermbg=NONE cterm=NONE
hi Operator     ctermfg=204  ctermbg=NONE cterm=NONE
"hi Exception

hi PreProc      ctermfg=204  ctermbg=NONE cterm=NONE
hi Type         ctermfg=204  ctermbg=NONE cterm=NONE
hi StorageClass ctermfg=204  ctermbg=NONE cterm=NONE

hi Special      ctermfg=231  ctermbg=NONE cterm=NONE

hi Underlined   ctermfg=NONE ctermbg=NONE cterm=underline

"hi Error

hi Todo         ctermfg=095 ctermbg=NONE cterm=inverse,bold

"Extended Highlighting
hi NonText      ctermfg=059  ctermbg=236  cterm=NONE
hi Visual       ctermfg=NONE ctermbg=059  cterm=NONE
hi ErrorMsg     ctermfg=231  ctermbg=204  cterm=NONE
hi IncSearch    ctermfg=15   ctermbg=186  cterm=NONE
hi Search       ctermfg=15   ctermbg=009  cterm=NONE
"hi MoreMsg
"hi ModeMsg
hi LineNr       ctermfg=246  ctermbg=237  cterm=NONE
hi VertSplit    ctermfg=241  ctermbg=241  cterm=NONE
""hi VisualNOS
hi Folded       ctermfg=242  ctermbg=235  cterm=NONE
hi DiffAdd      ctermfg=002  ctermbg=NONE cterm=bold
hi DiffChange   ctermfg=011  ctermbg=NONE cterm=NONE
hi DiffDelete   ctermfg=009  ctermbg=NONE cterm=NONE
hi DiffText     ctermfg=231  ctermbg=024  cterm=bold
"hi SpellBad
"hi SpellCap
"hi SpellRare
"hi SpellLocal
hi StatusLine   ctermfg=231  ctermbg=241  cterm=bold
hi StatusLineNC ctermfg=231  ctermbg=241  cterm=NONE
hi Pmenu        ctermfg=NONE ctermbg=059  cterm=NONE
hi PmenuSel     ctermfg=NONE ctermbg=244  cterm=NONE
"hi PmenuSbar
"hi PmenuThumb
"hi MatchParen   ctermfg=NONE ctermbg=10  cterm=underline
hi Cursor       ctermfg=235  ctermbg=231  cterm=NONE
hi CursorLine   ctermfg=NONE ctermbg=237  cterm=NONE
"hi CursorLineNr
hi CursorColumn ctermfg=NONE ctermbg=237  cterm=NONE
hi ColorColumn  ctermfg=NONE ctermbg=237  cterm=NONE
"hi WildMenu
hi SignColumn   ctermfg=NONE ctermbg=237  cterm=NONE

hi Directory    ctermfg=141  ctermbg=NONE cterm=NONE
hi Define       ctermfg=204  ctermbg=NONE cterm=NONE
hi WarningMsg   ctermfg=231  ctermbg=204  cterm=NONE
hi Keyword      ctermfg=204  ctermbg=NONE cterm=NONE
hi Label        ctermfg=011  ctermbg=NONE cterm=NONE
hi SpecialKey   ctermfg=059  ctermbg=237  cterm=NONE
hi Tag          ctermfg=204  ctermbg=NONE cterm=NONE
hi Typedef      ctermfg=009  ctermbg=NONE cterm=NONE

"" Vim help
hi helpCommand  ctermfg=001 ctermbg=NONE cterm=NONE
hi helpExample  ctermfg=001 ctermbg=NONE cterm=NONE

"" Ruby Syntax
hi rubyClass                    ctermfg=204  ctermbg=NONE cterm=NONE
hi rubyFunction                 ctermfg=081  ctermbg=NONE cterm=NONE
hi rubyInterpolationDelimiter   ctermfg=NONE ctermbg=NONE cterm=NONE
hi rubySymbol                   ctermfg=141  ctermbg=NONE cterm=NONE
hi rubyConstant                 ctermfg=081  ctermbg=NONE cterm=NONE
hi rubyStringDelimiter          ctermfg=186  ctermbg=NONE cterm=NONE
hi rubyBlockParameter           ctermfg=208  ctermbg=NONE cterm=NONE
hi rubyInstanceVariable         ctermfg=NONE ctermbg=NONE cterm=NONE
hi rubyInclude                  ctermfg=204  ctermbg=NONE cterm=NONE
hi rubyGlobalVariable           ctermfg=NONE ctermbg=NONE cterm=NONE
hi rubyRegexp                   ctermfg=186  ctermbg=NONE cterm=NONE
hi rubyRegexpDelimiter          ctermfg=186  ctermbg=NONE cterm=NONE
hi rubyEscape                   ctermfg=141  ctermbg=NONE cterm=NONE
hi rubyControl                  ctermfg=204  ctermbg=NONE cterm=NONE
hi rubyClassVariable            ctermfg=NONE ctermbg=NONE cterm=NONE
hi rubyOperator                 ctermfg=204  ctermbg=NONE cterm=NONE
hi rubyExceptio                 ctermfg=204  ctermbg=NONE cterm=NONE
hi rubyPseudoVariabl            ctermfg=NONE ctermbg=NONE cterm=NONE
hi rubyRailsUserClass           ctermfg=081  ctermbg=NONE cterm=NONE
hi rubyRailsARAssociationMethod ctermfg=081  ctermbg=NONE cterm=NONE
hi rubyRailsARMethod            ctermfg=081  ctermbg=NONE cterm=NONE
hi rubyRailsRenderMethod        ctermfg=081  ctermbg=NONE cterm=NONE
hi rubyRailsMethod              ctermfg=081  ctermbg=NONE cterm=NONE
hi erubyDelimiter               ctermfg=NONE ctermbg=NONE cterm=NONE
hi erubyComment                 ctermfg=095  ctermbg=NONE cterm=NONE
hi erubyRailsMethod             ctermfg=081  ctermbg=NONE cterm=NONE

""HTML syntax
hi htmlString       ctermfg=210  ctermbg=NONE cterm=NONE
hi htmlTag          ctermfg=081  ctermbg=NONE cterm=NONE
hi htmlEndTag       ctermfg=081  ctermbg=NONE cterm=NONE
hi htmlTagName      ctermfg=228  ctermbg=NONE cterm=NONE
hi htmlArg          ctermfg=NONE ctermbg=NONE cterm=NONE
hi htmlSpecialChar  ctermfg=141  ctermbg=NONE cterm=NONE
hi htmlError        ctermfg=015  ctermfg=009  cterm=NONE
hi htmlTitle        ctermfg=211  ctermfg=NONE cterm=bold

""Javascript syntax
hi htmlSpecialChar          ctermfg=141 ctermbg=NONE cterm=NONE
hi javaScriptFunction       ctermfg=081 ctermbg=NONE cterm=NONE
hi javaScriptRailsFunction  ctermfg=081 ctermbg=NONE cterm=NONE

""yaml syntax
hi javaScriptBraces         ctermfg=NONE ctermbg=NONE cterm=NONE
hi yamlKey                  ctermfg=204  ctermbg=NONE cterm=NONE
hi yamlAnchor               ctermfg=NONE ctermbg=NONE cterm=NONE
hi yamlAlias                ctermfg=NONE ctermbg=NONE cterm=NONE
hi yamlDocumentHeader       ctermfg=186  ctermbg=NONE cterm=NONE

""CSS syntax
hi cssURL           ctermfg=208  ctermbg=NONE cterm=NONE
hi cssFunctionName  ctermfg=081  ctermbg=NONE cterm=NONE
hi cssColor         ctermfg=141  ctermbg=NONE cterm=NONE
hi cssPseudoClassId ctermfg=081  ctermbg=NONE cterm=NONE
hi cssClassName     ctermfg=081  ctermbg=NONE cterm=NONE
hi cssValueLength   ctermfg=141  ctermbg=NONE cterm=NONE
hi cssCommonAttr    ctermfg=081  ctermbg=NONE cterm=NONE
hi cssBraces        ctermfg=NONE ctermbg=NONE cterm=NONE

"" C++ syntax
hi cppSTLnamespace  ctermfg=015 ctermbg=NONE cterm=NONE
hi cppSTLconstant   ctermfg=081 ctermbg=NONE cterm=NONE
hi cppAccess        ctermfg=204 ctermbg=NONE cterm=NONE

" Markdown syntax
"hi mkdCode             ctermfg=218 ctermbg=NONE cterm=NONE
hi mkdCodeStart     ctermfg=009 ctermbg=NONE cterm=bold
hi mkdCodeEnd       ctermfg=009 ctermbg=NONE cterm=bold


""Java syntax
hi javaBraces       ctermfg=231  ctermbg=NONE  cterm=NONE
