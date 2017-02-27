hi clear
if exists('syntax_on')
    syntax reset
endif
let g:colors_name='greenimal'

if &background == 'dark'
	let s:fg        = {'gui': '#d3d0c8', 'term': '252'}
	let s:bg        = {'gui': '#353535', 'term': '236'}
	let s:nontextfg = {'gui': '#7b7a70', 'term': '243'}
	let s:nontextbg = {'gui': '#404040', 'term': '238'}
	let s:statusfg  = {'gui': '#a7a69a', 'term': '145'}
	let s:statusbg  = {'gui': '#585858', 'term': '240'}
	let s:selection = {'gui': '#585858', 'term': '240'}
	let s:hilite    = {'gui': '#ffcc66', 'term': '222'}
	let s:prompt    = {'gui': '#99cc99', 'term': '114'}
	let s:conceal   = {'gui': '#99cc99', 'term': '114'}
	let s:errors    = {'gui': '#f2777a', 'term': '203'}
	let s:debug     = {'gui': '#f2777a', 'term': '203'}
	let s:keywords  = {'gui': '#519f50', 'term': '71'}
	let s:strings   = {'gui': '#d2997c', 'term': '180'}
	let s:comments  = {'gui': '#7b7a70', 'term': '243'}
	let s:diffadd   = {'gui': '#519f50', 'term': '71'}
	let s:diffdel   = {'gui': '#f2777a', 'term': '203'}
	let s:diffmod   = {'gui': '#ffcc66', 'term': '222'}
else
	let s:fg        = {'gui': '#515151', 'term': '252'}
	let s:bg        = {'gui': '#f2f0ec', 'term': '236'}
	let s:nontextfg = {'gui': '#a3a296', 'term': '243'}
	let s:nontextbg = {'gui': '#ebe9e2', 'term': '238'}
	let s:statusfg  = {'gui': '#99988c', 'term': '145'}
	let s:statusbg  = {'gui': '#e1dfd8', 'term': '240'}
	let s:selection = {'gui': '#d3d0c8', 'term': '240'}
	let s:hilite    = {'gui': '#d9ad57', 'term': '222'}
	let s:prompt    = {'gui': '#7c9b7c', 'term': '114'}
	let s:conceal   = {'gui': '#7c9b7c', 'term': '114'}
	let s:errors    = {'gui': '#da7174', 'term': '203'}
	let s:debug     = {'gui': '#da7174', 'term': '203'}
	let s:keywords  = {'gui': '#61a760', 'term': '71'}
	let s:strings   = {'gui': '#b87353', 'term': '180'}
	let s:comments  = {'gui': '#a09f93', 'term': '243'}
	let s:diffadd   = {'gui': '#518f50', 'term': '71'}
	let s:diffdel   = {'gui': '#d26f72', 'term': '203'}
	let s:diffmod   = {'gui': '#dcb362', 'term': '222'}
endif


let s:scheme = {
\	'ColorColumn':    {'guibg': s:nontextbg.gui, 'ctermbg': s:nontextbg.term},
\	'Conceal':        {'guifg': s:conceal.gui, 'guibg': 'background', 'ctermfg': s:conceal.term, 'ctermbg': s:bg.term},
\	'Cursor':         {'guifg': 'foreground', 'guibg': 'background', 'gui': 'reverse', 'ctermfg': s:fg.term, 'ctermbg': s:bg.term, 'cterm': 'reverse'},
\	'CursorColumn':   {'guibg': s:nontextbg.gui, 'ctermbg': s:nontextbg.term},
\	'CursorLine':     {'guibg': s:nontextbg.gui, 'ctermbg': s:nontextbg.term, 'cterm': 'none'},
\	'CursorLineNr':   {'guifg': s:hilite.gui, 'guibg': s:nontextbg.gui, 'ctermfg': s:hilite.term, 'ctermbg': s:nontextbg.term},
\	'Directory':      {'guifg': s:keywords.gui, 'ctermfg': s:keywords.term},
\	'DiffAdd':        {'guifg': 'background', 'guibg': s:diffadd.gui, 'ctermfg': s:bg.term, 'ctermbg': s:diffadd.term},
\	'DiffChange':     {'guifg': 'background', 'guibg': s:diffmod.gui, 'ctermfg': s:bg.term, 'ctermbg': s:diffmod.term},
\	'DiffDelete':     {'guifg': 'background', 'guibg': s:diffdel.gui, 'ctermfg': s:bg.term, 'ctermbg': s:diffdel.term},
\	'DiffText':       {'guifg': 'background', 'guibg': s:diffmod.gui, 'gui': 'bold', 'ctermfg': s:bg.term, 'ctermbg': s:diffmod.term, 'cterm': 'bold'},
\	'ErrorMsg':       {'guifg': s:errors.gui, 'guibg': 'background', 'gui': 'bold', 'ctermfg': s:errors.term, 'ctermbg': s:bg.term, 'cterm': 'bold'},
\	'Folded':         {'guifg': s:nontextfg.gui, 'guibg': s:nontextbg.gui, 'ctermfg': s:nontextfg.term, 'ctermbg': s:nontextbg.term},
\	'FoldColumn':     {'guifg': s:prompt.gui, 'guibg': s:bg.gui, 'ctermfg': s:prompt.term, 'ctermbg': s:bg.term},
\	'SignColumn':     {'guifg': s:nontextfg.gui, 'guibg': s:nontextbg.gui, 'ctermfg': s:nontextfg.term, 'ctermbg': s:nontextbg.term},
\	'IncSearch':      {'guifg': s:hilite.gui, 'gui': 'none', 'ctermfg': s:hilite.term, 'cterm': 'none'},
\	'LineNr':         {'guifg': s:nontextfg.gui, 'guibg': s:nontextbg.gui, 'ctermfg': s:nontextfg.term, 'ctermbg': s:nontextbg.term},
\	'MatchParen':     {'guifg': s:hilite.gui, 'guibg': 'background', 'gui': 'bold', 'ctermfg': s:hilite.term, 'ctermbg': s:bg.term, 'cterm': 'bold'},
\	'ModeMsg':        {'guifg': s:prompt.gui, 'gui': 'none', 'ctermfg': s:prompt.term, 'cterm': 'none'},
\	'MoreMsg':        {'guifg': s:prompt.gui, 'gui': 'bold', 'ctermfg': s:prompt.term, 'cterm': 'bold'},
\	'NonText':        {'guifg': s:nontextfg.gui, 'ctermfg': s:nontextfg.term},
\	'Normal':         {'guifg': s:fg.gui, 'guibg': s:bg.gui, 'ctermfg': s:fg.term, 'ctermbg': s:bg.term},
\	'Pmenu':          {'guifg': s:statusfg.gui, 'guibg': s:statusbg.gui, 'ctermfg': s:statusfg.term, 'ctermbg': s:statusbg.term},
\	'PmenuSel':       {'guifg': s:statusbg.gui, 'guibg': s:hilite.gui, 'gui': 'bold', 'ctermfg': s:statusbg.term, 'ctermbg': s:hilite.term, 'cterm': 'bold'},
\	'Question':       {'guifg': s:prompt.gui, 'ctermfg': s:prompt.term},
\	'Search':         {'guifg': 'background', 'guibg': s:hilite.gui, 'ctermfg': s:bg.term, 'ctermbg': s:hilite.term},
\	'SpecialKey':     {'guifg': s:nontextfg.gui, 'ctermfg': s:nontextfg.term},
\	'SpellBad':       {'guisp': s:errors.gui, 'gui': 'undercurl', 'cterm': 'undercurl'},
\	'SpellCap':       {'guisp': s:errors.gui, 'gui': 'undercurl', 'cterm': 'undercurl'},
\	'SpellLocal':     {'guisp': s:errors.gui, 'gui': 'undercurl', 'cterm': 'undercurl'},
\	'SpellRare':      {'guisp': s:errors.gui, 'gui': 'undercurl', 'cterm': 'undercurl'},
\	'StatusLine':     {'guifg': s:statusfg.gui, 'guibg': s:statusbg.gui, 'ctermfg': s:statusfg.term, 'ctermbg': s:statusbg.term},
\	'StatusLineNC':   {'guifg': s:statusbg.gui, 'guibg': s:statusfg.gui, 'ctermfg': s:statusbg.term, 'ctermbg': s:statusfg.term},
\	'TabLine':        {'guifg': s:statusbg.gui, 'guibg': s:statusfg.gui, 'ctermfg': s:statusbg.term, 'ctermbg': s:statusfg.term},
\	'TabLineFil':     {'guifg': s:statusbg.gui, 'guibg': s:statusfg.gui, 'ctermfg': s:statusbg.term, 'ctermbg': s:statusfg.term},
\	'TabLineSel':     {'guifg': s:statusfg.gui, 'guibg': s:statusbg.gui, 'ctermfg': s:statusfg.term, 'ctermbg': s:statusbg.term},
\	'Title':          {'guifg': s:hilite.gui, 'gui': 'bold', 'ctermfg': s:hilite.term, 'cterm': 'bold'},
\	'VertSplit':      {'guifg': s:statusbg.gui, 'guibg': s:statusbg.gui, 'ctermfg': s:statusbg.term, 'ctermbg': s:statusbg.term},
\	'Visual':         {'guibg': s:selection.gui, 'ctermbg': s:selection.term},
\	'VisualNOS':      {'guifg': s:selection.gui, 'ctermfg': s:selection.term},
\	'WarningMsg':     {'guifg': s:errors.gui, 'ctermfg': s:errors.term},
\	'WildMenu':       {'guibg': s:hilite.gui, 'ctermbg': s:hilite.term},
\
\	'Comment':        {'guifg': s:comments.gui, 'ctermfg': s:comments.term},
\	'Constant':       {'guifg': 'foreground', 'ctermfg': s:fg.term},
\	'String':         {'guifg': s:strings.gui, 'ctermfg': s:strings.term},
\	'Character':      {'guifg': s:strings.gui, 'ctermfg': s:strings.term},
\	'Boolean':        {'guifg': s:keywords.gui, 'ctermfg': s:keywords.term},
\	'Identifier':     {'guifg': 'foreground', 'ctermfg': s:fg.term},
\	'Statement':      {'guifg': s:keywords.gui, 'ctermfg': s:keywords.term},
\	'Operator':       {'guifg': 'foreground', 'ctermfg': s:fg.term},
\	'PreProc':        {'guifg': s:keywords.gui, 'gui': 'none', 'ctermfg': s:keywords.term, 'cterm': 'none'},
\	'Type':           {'guifg': s:keywords.gui, 'gui': 'none', 'ctermfg': s:keywords.term, 'cterm': 'none'},
\	'Special':        {'guifg': 'foreground', 'ctermfg': s:fg.term},
\	'SpecialChar':    {'guifg': s:strings.gui, 'gui': 'bold', 'ctermfg': s:strings.term, 'cterm': 'bold'},
\	'SpecialComment': {'guifg': s:comments.gui, 'ctermfg': s:comments.term},
\	'Debug':          {'guifg': s:debug.gui, 'ctermfg': s:debug.term},
\	'Underlined':     {'guifg': 'foreground', 'ctermfg': s:fg.term},
\	'Error':          {'guifg': s:errors.gui, 'ctermfg': s:errors.term},
\	'Todo':           {'guifg': s:comments.gui, 'guibg': 'background', 'gui': 'reverse', 'ctermfg': s:comments.term, 'ctermbg': s:bg.term, 'cterm': 'reverse'},
\}


" execute the highlight commands
for [s:group, s:args] in items(s:scheme)
	for [s:key, s:arg] in items(s:args)
		exe 'hi '.s:group.' '.s:key.'='.s:arg
	endfor
endfor
