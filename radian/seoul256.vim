" "  _____             _ ___ ___ ___      "
" " |   __|___ ___ _ _| |_  |  _|  _|     "
" " |__   | -_| . | | | |  _|_  | . |     "
" " |_____|___|___|___|_|___|___|___|.vim "
"
" " Low-contrast dark Vim color scheme using Seoul Colors "
"
" File:         seoul256.vim
" URL:          github.com/junegunn/seoul256.vim
" Author:       Junegunn Choi (junegunn.c@gmail.com)
" License:      MIT
"
" Copyright (c) 2017 Junegunn Choi
"
" MIT License
"
" Permission is hereby granted, free of charge, to any person obtaining
" a copy of this software and associated documentation files (the
" "Software"), to deal in the Software without restriction, including
" without limitation the rights to use, copy, modify, merge, publish,
" distribute, sublicense, and/or sell copies of the Software, and to
" permit persons to whom the Software is furnished to do so, subject to
" the following conditions:
"
" The above copyright notice and this permission notice shall be
" included in all copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
" EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
" MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
" NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
" LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
" OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
" WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

hi if !exists('s:rgb_map')
hi     if get(g:, 'seoul256_srgb', 0)
hi         let s:rgb_map =
hi         \{ 16: '#000000',  17: '#00005f',  18: '#000087',
hi         \  19: '#0000af',  20: '#0000d7',  21: '#0000ff',
hi         \  22: '#005f00',  23: '#005f5f',  24: '#005f87',
hi         \  25: '#005faf',  26: '#005fd7',  27: '#005fff',
hi         \  28: '#008700',  29: '#00875f',  30: '#008787',
hi         \  31: '#0087af',  32: '#0087d7',  33: '#0087ff',
hi         \  34: '#00af00',  35: '#00af5f',  36: '#00af87',
hi         \  37: '#00afaf',  38: '#00afd7',  39: '#00afff',
hi         \  40: '#00d700',  41: '#00d75f',  42: '#00d787',
hi         \  43: '#00d7af',  44: '#00d7d7',  45: '#00d7ff',
hi         \  46: '#00ff00',  47: '#00ff5f',  48: '#00ff87',
hi         \  49: '#00ffaf',  50: '#00ffd7',  51: '#00ffff',
hi         \  52: '#5f0000',  53: '#5f005f',  54: '#5f0087',
hi         \  55: '#5f00af',  56: '#5f00d7',  57: '#5f00ff',
hi         \  58: '#5f5f00',  59: '#5f5f5f',  60: '#5f5f87',
hi         \  61: '#5f5faf',  62: '#5f5fd7',  63: '#5f5fff',
hi         \  64: '#5f8700',  65: '#5f875f',  66: '#5f8787',
hi         \  67: '#5f87af',  68: '#5f87d7',  69: '#5f87ff',
hi         \  70: '#5faf00',  71: '#5faf5f',  72: '#5faf87',
hi         \  73: '#5fafaf',  74: '#5fafd7',  75: '#5fafff',
hi         \  76: '#5fd700',  77: '#5fd75f',  78: '#5fd787',
hi         \  79: '#5fd7af',  80: '#5fd7d7',  81: '#5fd7ff',
hi         \  82: '#5fff00',  83: '#5fff5f',  84: '#5fff87',
hi         \  85: '#5fffaf',  86: '#5fffd7',  87: '#5fffff',
hi         \  88: '#870000',  89: '#87005f',  90: '#870087',
hi         \  91: '#8700af',  92: '#8700d7',  93: '#8700ff',
hi         \  94: '#875f00',  95: '#875f5f',  96: '#875f87',
hi         \  97: '#875faf',  98: '#875fd7',  99: '#875fff',
hi         \ 100: '#878700', 101: '#87875f', 102: '#878787',
hi         \ 103: '#8787af', 104: '#8787d7', 105: '#8787ff',
hi         \ 106: '#87af00', 107: '#87af5f', 108: '#87af87',
hi         \ 109: '#87afaf', 110: '#87afd7', 111: '#87afff',
hi         \ 112: '#87d700', 113: '#87d75f', 114: '#87d787',
hi         \ 115: '#87d7af', 116: '#87d7d7', 117: '#87d7ff',
hi         \ 118: '#87ff00', 119: '#87ff5f', 120: '#87ff87',
hi         \ 121: '#87ffaf', 122: '#87ffd7', 123: '#87ffff',
hi         \ 124: '#af0000', 125: '#af005f', 126: '#af0087',
hi         \ 127: '#af00af', 128: '#af00d7', 129: '#af00ff',
hi         \ 130: '#af5f00', 131: '#af5f5f', 132: '#af5f87',
hi         \ 133: '#af5faf', 134: '#af5fd7', 135: '#af5fff',
hi         \ 136: '#af8700', 137: '#af875f', 138: '#af8787',
hi         \ 139: '#af87af', 140: '#af87d7', 141: '#af87ff',
hi         \ 142: '#afaf00', 143: '#afaf5f', 144: '#afaf87',
hi         \ 145: '#afafaf', 146: '#afafd7', 147: '#afafff',
hi         \ 148: '#afd700', 149: '#afd75f', 150: '#afd787',
hi         \ 151: '#afd7af', 152: '#afd7d7', 153: '#afd7ff',
hi         \ 154: '#afff00', 155: '#afff5f', 156: '#afff87',
hi         \ 157: '#afffaf', 158: '#afffd7', 159: '#afffff',
hi         \ 160: '#d70000', 161: '#d7005f', 162: '#d70087',
hi         \ 163: '#d700af', 164: '#d700d7', 165: '#d700ff',
hi         \ 166: '#d75f00', 167: '#d75f5f', 168: '#d75f87',
hi         \ 169: '#d75faf', 170: '#d75fd7', 171: '#d75fff',
hi         \ 172: '#d78700', 173: '#d7875f', 174: '#d78787',
hi         \ 175: '#d787af', 176: '#d787d7', 177: '#d787ff',
hi         \ 178: '#d7af00', 179: '#d7af5f', 180: '#d7af87',
hi         \ 181: '#d7afaf', 182: '#d7afd7', 183: '#d7afff',
hi         \ 184: '#d7d700', 185: '#d7d75f', 186: '#d7d787',
hi         \ 187: '#d7d7af', 188: '#d7d7d7', 189: '#d7d7ff',
hi         \ 190: '#d7ff00', 191: '#d7ff5f', 192: '#d7ff87',
hi         \ 193: '#d7ffaf', 194: '#d7ffd7', 195: '#d7ffff',
hi         \ 196: '#ff0000', 197: '#ff005f', 198: '#ff0087',
hi         \ 199: '#ff00af', 200: '#ff00d7', 201: '#ff00ff',
hi         \ 202: '#ff5f00', 203: '#ff5f5f', 204: '#ff5f87',
hi         \ 205: '#ff5faf', 206: '#ff5fd7', 207: '#ff5fff',
hi         \ 208: '#ff8700', 209: '#ff875f', 210: '#ff8787',
hi         \ 211: '#ff87af', 212: '#ff87d7', 213: '#ff87ff',
hi         \ 214: '#ffaf00', 215: '#ffaf5f', 216: '#ffaf87',
hi         \ 217: '#ffafaf', 218: '#ffafd7', 219: '#ffafff',
hi         \ 220: '#ffd700', 221: '#ffd75f', 222: '#ffd787',
hi         \ 223: '#ffd7af', 224: '#ffd7d7', 225: '#ffd7ff',
hi         \ 226: '#ffff00', 227: '#ffff5f', 228: '#ffff87',
hi         \ 229: '#ffffaf', 230: '#ffffd7', 231: '#ffffff',
hi         \ 232: '#080808', 233: '#121212', 234: '#1c1c1c',
hi         \ 235: '#262626', 236: '#303030', 237: '#3a3a3a',
hi         \ 238: '#444444', 239: '#4e4e4e', 240: '#585858',
hi         \ 241: '#626262', 242: '#6c6c6c', 243: '#767676',
hi         \ 244: '#808080', 245: '#8a8a8a', 246: '#949494',
hi         \ 247: '#9e9e9e', 248: '#a8a8a8', 249: '#b2b2b2',
hi         \ 250: '#bcbcbc', 251: '#c6c6c6', 252: '#d0d0d0',
hi         \ 253: '#dadada', 254: '#e4e4e4', 255: '#eeeeee' }
hi     else
hi         let s:rgb_map =
hi         \{ 22: '#006F00', 23: '#007173', 24: '#007299', 25: '#0074BE', 30: '#009799',
hi         \  31: '#0099BD', 38: '#00BDDF', 52: '#730B00', 58: '#727100', 59: '#727272',
hi         \  65: '#719872', 66: '#719899', 67: '#7299BC', 68: '#719CDF', 73: '#6FBCBD',
hi         \  74: '#70BDDF', 88: '#9B1300', 89: '#9B1D72', 94: '#9A7200', 95: '#9A7372',
hi         \  96: '#9A7599', 101: '#999872', 103: '#999ABD', 108: '#98BC99', 109: '#98BCBD',
hi         \ 110: '#98BEDE', 116: '#97DDDF', 125: '#BF2172', 131: '#BE7572', 137: '#BE9873',
hi         \ 143: '#BDBB72', 144: '#BDBC98', 145: '#BDBDBD', 151: '#BCDDBD', 152: '#BCDEDE',
hi         \ 153: '#BCE0FF', 161: '#E12672', 168: '#E17899', 173: '#E19972', 174: '#E09B99',
hi         \ 179: '#DFBC72', 181: '#E0BEBC', 184: '#DEDC00', 186: '#DEDD99', 187: '#DFDEBD',
hi         \ 189: '#DFDFFF', 216: '#FFBD98', 217: '#FFBFBD', 218: '#FFC0DE', 220: '#FFDD00',
hi         \ 222: '#FFDE99', 224: '#FFDFDF', 230: '#FFFFDF', 231: '#FFFFFF', 232: '#060606',
hi         \ 233: '#171717', 234: '#252525', 235: '#333233', 236: '#3F3F3F', 237: '#4B4B4B',
hi         \ 238: '#565656', 239: '#616161', 240: '#6B6B6B', 241: '#757575', 249: '#BFBFBF',
hi         \ 250: '#C8C8C8', 251: '#D1D0D1', 252: '#D9D9D9', 253: '#E1E1E1', 254: '#E9E9E9',
hi         \ 255: '#F1F1F1' }
hi     endif
hi endif
hi 
hi let s:background  = &background
hi let s:colors_name = get(g:, 'colors_name', '')
hi 
hi silent! unlet s:style s:seoul256_background
hi 
hi " 1. If g:seoul256_background is found
hi if exists('g:seoul256_background')
hi   let s:seoul256_background = g:seoul256_background
hi   if s:seoul256_background >= 233 && s:seoul256_background <= 239
hi     let s:style = 'dark'
hi   elseif s:seoul256_background >= 252 && s:seoul256_background <= 256
hi     let s:style = 'light'
hi   else
hi     unlet s:seoul256_background
hi   endif
hi endif
hi 
hi if !exists('s:style')
hi   " 2. If g:colors_name is NOT 'seoul256' -> dark version
hi   if s:colors_name != 'seoul256'
hi     let s:style = 'dark'
hi   " 3. Follow &background setting
hi   else
hi     let s:style = &background
hi   endif
hi endif
hi let s:style_idx = s:style == 'light'
hi 
hi " Background colors
hi if s:style == 'dark'
hi   let s:dark_bg  = get(s:, 'seoul256_background', 237)
hi   let s:light_bg = 253
hi else
hi   let s:dark_bg  = 237
hi   let s:light_bg = get(s:, 'seoul256_background', 253)
hi endif
hi let s:dark_bg_2 = s:dark_bg > 233 ? s:dark_bg - 2 : 16
hi let s:light_bg_1 = min([s:light_bg + 1, 256])
hi let s:light_bg_2 = min([s:light_bg + 2, 256])
hi 
hi " Foreground colors
hi let s:dark_fg = 252
hi let s:light_fg = 239
hi 
hi function! s:hi(item, fg, bg)
hi   let fg = a:fg[s:style_idx] > 255 ? 231 : a:fg[s:style_idx]
hi   let bg = a:bg[s:style_idx] > 255 ? 231 : a:bg[s:style_idx]
hi 
hi   if !empty(fg)
hi     execute printf("highlight %s ctermfg=%s guifg=%s", a:item, fg, get(s:rgb_map, fg, 'NONE'))
hi   endif
hi   if !empty(bg)
hi     execute printf("highlight %s ctermbg=%s guibg=%s", a:item, bg, get(s:rgb_map, bg, 'NONE'))
hi   endif
hi endfunction
hi 
hi let s:gui = has('gui_running')
hi if !s:gui
hi   set t_Co=256
hi end
hi 
hi silent! unlet g:colors_name
hi hi clear
hi if exists("syntax_on")
hi   syntax reset
hi endif
hi 
hi call s:hi('Normal', [s:dark_fg, s:light_fg], [s:dark_bg, s:light_bg])
hi 
hi call s:hi('LineNr', [101, 101], [s:dark_bg + 1, s:light_bg - 2])
hi call s:hi('Visual', ['', ''], [23, 152])
hi call s:hi('VisualNOS', ['', ''], [23, 152])
hi 
hi call s:hi('Comment', [65, 65], ['', ''])
hi call s:hi('Number', [222, 95], ['', ''])
hi call s:hi('Float', [222, 95], ['', ''])
hi call s:hi('Boolean', [103, 168], ['', ''])
hi call s:hi('String', [109, 30], ['', ''])
hi call s:hi('Constant', [73, 23], ['', ''])
hi call s:hi('Character', [174, 168], ['', ''])
hi call s:hi('Delimiter', [137, 94], ['', ''])
hi call s:hi('StringDelimiter', [137, 94], ['', ''])
hi call s:hi('Statement', [108, 66], ['', ''])
hi " case, default, etc.
hi " hi Label ctermfg=
hi 
hi " if else end
hi call s:hi('Conditional', [110, 31], ['', ''])
hi 
hi " while end
hi call s:hi('Repeat', [68, 67], ['', ''])
hi call s:hi('Todo', [161, 125], [s:dark_bg_2, s:light_bg_2])
hi call s:hi('Function', [187, 58], ['', ''])
hi 
hi " Macros
hi call s:hi('Define', [173, 131], ['', ''])
hi call s:hi('Macro', [173, 131], ['', ''])
hi call s:hi('Include', [173, 131], ['', ''])
hi call s:hi('PreCondit', [173, 131], ['', ''])
hi 
hi 
hi " #!
hi call s:hi('PreProc', [143, 58], ['', ''])
hi 
hi " @abc
hi call s:hi('Identifier', [217, 96], ['', ''])
hi 
hi " AAA Abc
hi call s:hi('Type', [179, 94], ['', ''])
hi 
hi " + - * / <<
hi call s:hi('Operator', [186, 131], ['', ''])
hi 
hi " super yield
hi call s:hi('Keyword', [168, 168], ['', ''])
hi 
hi " raise
hi call s:hi('Exception', [161, 161], ['', ''])
hi "
hi " hi StorageClass ctermfg=
hi call s:hi('Structure', [116, 23], ['', ''])
hi " hi Typedef ctermfg=
hi 
hi call s:hi('Error', [s:dark_fg, s:light_bg_1], [52, 174])
hi call s:hi('ErrorMsg', [s:dark_fg, s:light_bg_1], [52, 168])
hi call s:hi('Underlined', [181, 168], ['', ''])
hi 
hi " set textwidth=80
hi " set colorcolumn=+1
hi call s:hi('ColorColumn', ['', ''], [s:dark_bg - 1, s:light_bg - 2])
hi 
hi " GVIM only
hi " hi Cursor ctermfg=
hi " hi CursorIM ctermfg=
hi 
hi " set cursorline cursorcolumn
hi call s:hi('CursorLine', ['', ''], [s:dark_bg - 1, s:light_bg - 1])
hi call s:hi('CursorLineNr', [131, 131], [s:dark_bg - 1, s:light_bg - 1])
hi call s:hi('CursorColumn', ['', ''], [s:dark_bg - 1, s:light_bg - 1])
hi call s:hi('NormalFloat', ['', ''], [s:dark_bg - 1, s:light_bg - 1])
hi 
hi call s:hi('Directory', [187, 95], ['', ''])
hi 
hi call s:hi('DiffAdd',    ['NONE', 'NONE'], [22, 151])
hi call s:hi('DiffDelete', ['NONE', 'NONE'], [95, 181])
hi call s:hi('DiffChange', ['NONE', 'NONE'], [s:dark_bg + 3, 189])
hi call s:hi('DiffText',   ['NONE', 'NONE'], [52, 224])
hi 
hi call s:hi('VertSplit', [s:dark_bg_2, s:light_bg - 3], [s:dark_bg_2, s:light_bg - 3])
hi call s:hi('Folded', [101, 101], [s:dark_bg + 1, s:light_bg - 2])
hi 
hi " set foldcolumn=1
hi call s:hi('FoldColumn', [144, 94], [s:dark_bg + 1, s:light_bg - 2])
hi 
hi call s:hi('MatchParen', ['', ''], [s:dark_bg + 3, s:light_bg - 3])
hi 
hi " -- INSERT --
hi call s:hi('ModeMsg', [173, 173], ['', ''])
hi 
hi " let &showbreak = '> '
hi call s:hi('NonText', [59, 145], ['', ''])
hi 
hi call s:hi('MoreMsg', [173, 173], ['', ''])
hi 
hi " Popup menu
hi call s:hi('Pmenu', [s:dark_bg + 1, 238], [224, 224])
hi call s:hi('PmenuSel', [s:dark_fg, s:dark_fg], [89, 89])
hi call s:hi('PmenuSbar', ['', ''], [65, 65])
hi call s:hi('PmenuThumb', ['', ''], [23, 23])
hi 
hi call s:hi('Search', [s:dark_fg, 255], [24, 74])
hi call s:hi('IncSearch', [220, 220], [s:dark_bg + 1, 238])
hi 
hi " String delimiter, interpolation
hi call s:hi('Special', [216, 173], ['', ''])
hi " hi SpecialChar ctermfg=
hi " hi SpecialComment ctermfg=
hi " hi Tag ctermfg=
hi " hi Debug ctermfg=
hi 
hi " :map, listchars
hi call s:hi('SpecialKey', [59, 145], ['', ''])
hi 
hi if !s:gui
hi   " Red / Blue / Cyan / Magenta
hi   if s:style_idx == 0
hi     hi SpellBad   ctermbg=NONE cterm=underline ctermfg=168
hi     hi SpellCap   ctermbg=NONE cterm=underline ctermfg=110
hi     hi SpellLocal ctermbg=NONE cterm=underline ctermfg=153
hi     hi SpellRare  ctermbg=NONE cterm=underline ctermfg=218
hi   else
hi     hi SpellBad   ctermbg=NONE cterm=underline ctermfg=125
hi     hi SpellCap   ctermbg=NONE cterm=underline ctermfg=25
hi     hi SpellLocal ctermbg=NONE cterm=underline ctermfg=31
hi     hi SpellRare  ctermbg=NONE cterm=underline ctermfg=96
hi   endif
hi else
hi   if s:style_idx == 0
hi     execute 'hi SpellBad   gui=undercurl guisp=' . s:rgb_map[168]
hi     execute 'hi SpellCap   gui=undercurl guisp=' . s:rgb_map[110]
hi     execute 'hi SpellLocal gui=undercurl guisp=' . s:rgb_map[153]
hi     execute 'hi SpellRare  gui=undercurl guisp=' . s:rgb_map[218]
hi   else
hi     execute 'hi SpellBad   gui=undercurl guisp=' . s:rgb_map[125]
hi     execute 'hi SpellCap   gui=undercurl guisp=' . s:rgb_map[25]
hi     execute 'hi SpellLocal gui=undercurl guisp=' . s:rgb_map[31]
hi     execute 'hi SpellRare  gui=undercurl guisp=' . s:rgb_map[96]
hi   endif
hi endif
hi 
hi "
hi call s:hi('StatusLine', [95, 95], [187, 187])
hi call s:hi('StatusLineNC', [s:dark_bg + 2, s:light_bg - 2], [187, 238])
hi call s:hi('StatusLineTerm', [95, 95], [187, 187])
hi call s:hi('StatusLineTermNC', [s:dark_bg + 2, s:light_bg - 2], [187, 238])
hi hi StatusLineTerm cterm=bold,reverse gui=bold,reverse
hi hi StatusLineTermNC cterm=bold,reverse gui=bold,reverse
hi call s:hi('TabLineFill', [s:dark_bg + 2, s:light_bg - 2], ['', ''])
hi call s:hi('TabLineSel', [187, 187], [23, 66])
hi call s:hi('TabLine', [s:dark_bg + 12, s:light_bg - 12], [s:dark_bg + 4, s:light_bg - 4])
hi call s:hi('WildMenu', [95, 95], [184, 184])
hi 
hi " :set all
hi call s:hi('Title', [181, 88], ['', ''])
hi 
hi " TODO
hi call s:hi('Question', [179, 88], ['', ''])
hi 
hi " Search hit bottom
hi call s:hi('WarningMsg', [179, 88], ['', ''])
hi 
hi " Sign column
hi call s:hi('SignColumn', [173, 173], [s:dark_bg, s:light_bg])
hi 
hi " Diff
hi call s:hi('diffAdded',   [108, 65], ['', ''])
hi call s:hi('diffRemoved', [174, 131], ['', ''])
hi hi link diffLine Constant
hi 
hi call s:hi('Conceal', [s:dark_fg + 2, s:light_fg - 2], [s:dark_bg - 1, s:light_bg + 2])
hi call s:hi('Ignore',  [s:dark_bg + 3, s:light_bg - 3], [s:dark_bg, s:light_bg])
hi 
hi """""""""""""""""""""""""""""""""""""""""""""""""
hi " Plugins
hi """""""""""""""""""""""""""""""""""""""""""""""""
hi 
hi " vim-indent-guides
hi " -----------------
hi let g:indent_guides_auto_colors = 0
hi call s:hi('IndentGuidesOdd', ['', ''], [s:dark_bg - 1, s:light_bg + 1])
hi call s:hi('IndentGuidesEven', ['', ''], [s:dark_bg + 1, s:light_bg - 1])
hi 
hi " vim-gitgutter
hi " -------------
hi call s:hi('GitGutterAdd', [108, 65], [s:dark_bg + 1, s:light_bg - 2])
hi call s:hi('GitGutterChange', [68, 68], [s:dark_bg + 1, s:light_bg - 2])
hi call s:hi('GitGutterDelete', [161, 161], [s:dark_bg + 1, s:light_bg - 2])
hi call s:hi('GitGutterChangeDelete', [168, 168], [s:dark_bg + 1, s:light_bg - 2])
hi 
hi " ale
hi " ---
hi call s:hi('ALEErrorSign', [161, 161], [s:dark_bg, s:light_bg])
hi call s:hi('ALEWarningSign', [174, 131], [s:dark_bg, s:light_bg])
hi 
hi " vim-signify
hi " -----------
hi call s:hi('SignifySignAdd', [108, 65], [s:dark_bg + 1, s:light_bg - 2])
hi call s:hi('SignifySignChange', [68, 68], [s:dark_bg + 1, s:light_bg - 2])
hi call s:hi('SignifySignDelete', [161, 161], [s:dark_bg + 1, s:light_bg - 2])
hi 
hi " coc.nvim
hi " --------
hi call s:hi('CocFloating', [s:dark_fg, s:light_fg], [s:dark_bg_2, s:light_bg - 2])
hi 
hi " http://vim.wikia.com/wiki/Highlight_unwanted_spaces     
hi " ---------------------------------------------------^^^^^
hi call s:hi('ExtraWhitespace', ['', ''], [s:dark_bg - 1, s:light_bg - 2])
hi 
hi " vim-ruby
hi " --------
hi " " rubySymbol
hi let ruby_operators = 1
hi call s:hi('rubyClass', [31, 31], ['', ''])
hi " call s:hi('rubyInstanceVariable', [189, 189], ['', ''])
hi call s:hi('rubyRegexp', [186, 101], ['', ''])
hi call s:hi('rubyRegexpDelimiter', [168, 168], ['', ''])
hi call s:hi('rubyArrayDelimiter', [67, 38], ['', ''])
hi call s:hi('rubyBlockParameterList', [186, 94], ['', ''])
hi call s:hi('rubyCurlyBlockDelimiter', [144, 101], ['', ''])
hi 
hi " ARGV $stdout
hi call s:hi('rubyPredefinedIdentifier', [230, 52], ['', ''])
hi " hi rubyRegexpSpecial
hi 
hi hi CursorLine cterm=NONE
hi hi CursorLineNr cterm=NONE
hi 
hi let g:seoul256_current_fg = [s:dark_fg, s:light_fg][s:style_idx]
hi let g:seoul256_current_bg = [s:dark_bg, s:light_bg][s:style_idx]
hi let g:colors_name = 'seoul256'
hi if s:colors_name != g:colors_name || s:background == s:style
hi   let &background = s:style
hi else
hi   let &background = s:background
hi endif
hi 
hi 
hi SpecialKey     xxx ctermfg=59 guifg=#727272
hi EndOfBuffer    xxx links to NonText
hi TermCursor     xxx cterm=reverse gui=reverse
hi TermCursorNC   xxx cleared
hi NonText        xxx ctermfg=59 gui=bold guifg=#727272
hi Directory      xxx ctermfg=187 guifg=#DFDEBD
hi ErrorMsg       xxx ctermfg=252 ctermbg=52 guifg=#D9D9D9 guibg=#730B00
hi IncSearch      xxx cterm=reverse ctermfg=220 ctermbg=238 gui=reverse guifg=#FFDD00 guibg=#565656
hi Search         xxx ctermfg=252 ctermbg=24 guifg=#D9D9D9 guibg=#007299
hi MoreMsg        xxx ctermfg=173 gui=bold guifg=#E19972
hi ModeMsg        xxx cterm=bold ctermfg=173 gui=bold guifg=#E19972
hi LineNr         xxx ctermfg=101 ctermbg=238 guifg=#999872 guibg=#565656
hi LineNrAbove    xxx links to LineNr
hi LineNrBelow    xxx links to LineNr
hi CursorLineNr   xxx ctermfg=131 ctermbg=236 gui=bold guifg=#BE7572 guibg=#3F3F3F
hi CursorLineSign xxx links to SignColumn
hi CursorLineFold xxx links to FoldColumn
hi Question       xxx ctermfg=179 gui=bold guifg=#DFBC72
hi StatusLine     xxx cterm=bold,reverse ctermfg=95 ctermbg=187 gui=bold,reverse guifg=#9A7372 guibg=#DFDEBD
hi StatusLineNC   xxx cterm=reverse ctermfg=239 ctermbg=187 gui=reverse guifg=#616161 guibg=#DFDEBD
hi WinSeparator   xxx guibg=None
hi VertSplit      xxx cterm=reverse ctermfg=235 ctermbg=235 gui=reverse guifg=#333233 guibg=#333233
hi Title          xxx ctermfg=181 gui=bold guifg=#E0BEBC
hi Visual         xxx ctermbg=23 guibg=#007173
hi VisualNC       xxx cleared
hi WarningMsg     xxx ctermfg=179 guifg=#DFBC72
hi WildMenu       xxx ctermfg=95 ctermbg=184 guifg=#9A7372 guibg=#DEDC00
hi Folded         xxx ctermfg=101 ctermbg=238 guifg=#999872 guibg=#565656
hi FoldColumn     xxx ctermfg=144 ctermbg=238 guifg=#BDBC98 guibg=#565656
hi DiffAdd        xxx ctermbg=22 guibg=#006F00
hi DiffChange     xxx ctermbg=240 guibg=#6B6B6B
hi DiffDelete     xxx ctermbg=95 gui=bold guibg=#9A7372
hi DiffText       xxx cterm=bold ctermbg=52 gui=bold guibg=#730B00
hi SignColumn     xxx ctermfg=173 ctermbg=237 guifg=#E19972 guibg=#4B4B4B
hi Conceal        xxx ctermfg=254 ctermbg=236 guifg=#E9E9E9 guibg=#3F3F3F
hi SpellBad       xxx cterm=underline ctermfg=168 gui=undercurl guisp=Red
hi SpellCap       xxx cterm=underline ctermfg=110 gui=undercurl guisp=Blue
hi SpellRare      xxx cterm=underline ctermfg=218 gui=undercurl guisp=Magenta
hi SpellLocal     xxx cterm=underline ctermfg=153 gui=undercurl guisp=Cyan
hi Pmenu          xxx ctermfg=238 ctermbg=224 guifg=#565656 guibg=#FFDFDF
hi PmenuSel       xxx ctermfg=252 ctermbg=89 guifg=#D9D9D9 guibg=#9B1D72
hi PmenuSbar      xxx ctermbg=65 guibg=#719872
hi PmenuThumb     xxx ctermbg=23 guibg=#007173
hi TabLine        xxx cterm=underline ctermfg=249 ctermbg=241 gui=underline guifg=#BFBFBF guibg=#757575
hi TabLineSel     xxx cterm=bold ctermfg=187 ctermbg=23 gui=bold guifg=#DFDEBD guibg=#007173
hi TabLineFill    xxx cterm=reverse ctermfg=239 gui=reverse guifg=#616161
hi CursorColumn   xxx ctermbg=236 guibg=#3F3F3F
hi CursorLine     xxx ctermbg=236 guibg=#3F3F3F
hi ColorColumn    xxx ctermbg=236 guibg=#3F3F3F
hi QuickFixLine   xxx links to Search
hi Whitespace     xxx links to NonText
hi NormalNC       xxx cleared
hi MsgSeparator   xxx links to StatusLine
hi NormalFloat    xxx ctermbg=236 guibg=#3F3F3F
hi MsgArea        xxx cleared
hi FloatBorder    xxx links to WinSeparator
hi RedrawDebugNormal xxx cterm=reverse gui=reverse
hi RedrawDebugClear xxx ctermbg=11 guibg=Yellow
hi RedrawDebugComposed xxx ctermbg=10 guibg=Green
hi RedrawDebugRecompose xxx ctermbg=9 guibg=Red
hi Cursor         xxx guifg=bg guibg=fg
hi lCursor        xxx guifg=bg guibg=fg
hi Normal         xxx ctermfg=252 ctermbg=237 guifg=#D9D9D9 guibg=#4B4B4B
hi Substitute     xxx links to Search
hi FloatShadow    xxx guibg=Black blend=80
hi FloatShadowThrough xxx guibg=Black blend=100
hi Error          xxx ctermfg=252 ctermbg=52 guifg=#D9D9D9 guibg=#730B00
hi Todo           xxx ctermfg=161 ctermbg=235 guifg=#E12672 guibg=#333233
hi String         xxx ctermfg=109 guifg=#98BCBD
hi Constant       xxx ctermfg=73 guifg=#6FBCBD
hi Character      xxx ctermfg=174 guifg=#E09B99
hi Number         xxx ctermfg=222 guifg=#FFDE99
hi Boolean        xxx ctermfg=103 guifg=#999ABD
hi Float          xxx ctermfg=222 guifg=#FFDE99
hi Function       xxx ctermfg=187 guifg=#DFDEBD
hi Identifier     xxx cterm=bold ctermfg=217 guifg=#FFBFBD
hi Conditional    xxx ctermfg=110 guifg=#98BEDE
hi Statement      xxx ctermfg=108 gui=bold guifg=#98BC99
hi Repeat         xxx ctermfg=68 guifg=#719CDF
hi Label          xxx links to Statement
hi Operator       xxx ctermfg=186 guifg=#DEDD99
hi Keyword        xxx ctermfg=168 guifg=#E17899
hi Exception      xxx ctermfg=161 guifg=#E12672
hi Include        xxx ctermfg=173 guifg=#E19972
hi PreProc        xxx ctermfg=143 guifg=#BDBB72
hi Define         xxx ctermfg=173 guifg=#E19972
hi Macro          xxx ctermfg=173 guifg=#E19972
hi PreCondit      xxx ctermfg=173 guifg=#E19972
hi StorageClass   xxx links to Type
hi Type           xxx ctermfg=179 gui=bold guifg=#DFBC72
hi Structure      xxx ctermfg=116 guifg=#97DDDF
hi Typedef        xxx links to Type
hi Tag            xxx links to Special
hi Special        xxx ctermfg=216 guifg=#FFBD98
hi SpecialChar    xxx links to Special
hi Delimiter      xxx ctermfg=137 guifg=#BE9873
hi SpecialComment xxx links to Special
hi Debug          xxx links to Special
hi DiagnosticError xxx ctermfg=1 guifg=Red
hi DiagnosticWarn xxx ctermfg=3 guifg=Orange
hi DiagnosticInfo xxx ctermfg=4 guifg=LightBlue
hi DiagnosticHint xxx ctermfg=7 guifg=LightGrey
hi DiagnosticUnderlineError xxx cterm=underline gui=underline guisp=Red
hi DiagnosticUnderlineWarn xxx cterm=underline gui=underline guisp=Orange
hi DiagnosticUnderlineInfo xxx cterm=underline gui=underline guisp=LightBlue
hi DiagnosticUnderlineHint xxx cterm=underline gui=underline guisp=LightGrey
hi DiagnosticVirtualTextError xxx links to DiagnosticError
hi DiagnosticVirtualTextWarn xxx links to DiagnosticWarn
hi DiagnosticVirtualTextInfo xxx links to DiagnosticInfo
hi DiagnosticVirtualTextHint xxx links to DiagnosticHint
hi DiagnosticFloatingError xxx links to DiagnosticError
hi DiagnosticFloatingWarn xxx links to DiagnosticWarn
hi DiagnosticFloatingInfo xxx links to DiagnosticInfo
hi DiagnosticFloatingHint xxx links to DiagnosticHint
hi DiagnosticSignError xxx links to DiagnosticError
hi DiagnosticSignWarn xxx links to DiagnosticWarn
hi DiagnosticSignInfo xxx links to DiagnosticInfo
hi DiagnosticSignHint xxx links to DiagnosticHint
hi MatchParen     xxx ctermbg=240 guibg=#6B6B6B
hi Comment        xxx ctermfg=65 guifg=#719872
hi Underlined     xxx cterm=underline ctermfg=181 gui=underline guifg=#E0BEBC
hi Ignore         xxx ctermfg=240 ctermbg=237 guifg=#6B6B6B guibg=#4B4B4B
hi NvimInternalError xxx ctermfg=9 ctermbg=9 guifg=Red guibg=Red
hi NvimAssignment xxx links to Operator
hi NvimPlainAssignment xxx links to NvimAssignment
hi NvimAugmentedAssignment xxx links to NvimAssignment
hi NvimAssignmentWithAddition xxx links to NvimAugmentedAssignment
hi NvimAssignmentWithSubtraction xxx links to NvimAugmentedAssignment
hi NvimAssignmentWithConcatenation xxx links to NvimAugmentedAssignment
hi NvimOperator   xxx links to Operator
hi NvimUnaryOperator xxx links to NvimOperator
hi NvimUnaryPlus  xxx links to NvimUnaryOperator
hi NvimUnaryMinus xxx links to NvimUnaryOperator
hi NvimNot        xxx links to NvimUnaryOperator
hi NvimBinaryOperator xxx links to NvimOperator
hi NvimComparison xxx links to NvimBinaryOperator
hi NvimComparisonModifier xxx links to NvimComparison
hi NvimBinaryPlus xxx links to NvimBinaryOperator
hi NvimBinaryMinus xxx links to NvimBinaryOperator
hi NvimConcat     xxx links to NvimBinaryOperator
hi NvimConcatOrSubscript xxx links to NvimConcat
hi NvimOr         xxx links to NvimBinaryOperator
hi NvimAnd        xxx links to NvimBinaryOperator
hi NvimMultiplication xxx links to NvimBinaryOperator
hi NvimDivision   xxx links to NvimBinaryOperator
hi NvimMod        xxx links to NvimBinaryOperator
hi NvimTernary    xxx links to NvimOperator
hi NvimTernaryColon xxx links to NvimTernary
hi NvimParenthesis xxx links to Delimiter
hi NvimLambda     xxx links to NvimParenthesis
hi NvimNestingParenthesis xxx links to NvimParenthesis
hi NvimCallingParenthesis xxx links to NvimParenthesis
hi NvimSubscript  xxx links to NvimParenthesis
hi NvimSubscriptBracket xxx links to NvimSubscript
hi NvimSubscriptColon xxx links to NvimSubscript
hi NvimCurly      xxx links to NvimSubscript
hi NvimContainer  xxx links to NvimParenthesis
hi NvimDict       xxx links to NvimContainer
hi NvimList       xxx links to NvimContainer
hi NvimIdentifier xxx links to Identifier
hi NvimIdentifierScope xxx links to NvimIdentifier
hi NvimIdentifierScopeDelimiter xxx links to NvimIdentifier
hi NvimIdentifierName xxx links to NvimIdentifier
hi NvimIdentifierKey xxx links to NvimIdentifier
hi NvimColon      xxx links to Delimiter
hi NvimComma      xxx links to Delimiter
hi NvimArrow      xxx links to Delimiter
hi NvimRegister   xxx links to SpecialChar
hi NvimNumber     xxx links to Number
hi NvimFloat      xxx links to NvimNumber
hi NvimNumberPrefix xxx links to Type
hi NvimOptionSigil xxx links to Type
hi NvimOptionName xxx links to NvimIdentifier
hi NvimOptionScope xxx links to NvimIdentifierScope
hi NvimOptionScopeDelimiter xxx links to NvimIdentifierScopeDelimiter
hi NvimEnvironmentSigil xxx links to NvimOptionSigil
hi NvimEnvironmentName xxx links to NvimIdentifier
hi NvimString     xxx links to String
hi NvimStringBody xxx links to NvimString
hi NvimStringQuote xxx links to NvimString
hi NvimStringSpecial xxx links to SpecialChar
hi NvimSingleQuote xxx links to NvimStringQuote
hi NvimSingleQuotedBody xxx links to NvimStringBody
hi NvimSingleQuotedQuote xxx links to NvimStringSpecial
hi NvimDoubleQuote xxx links to NvimStringQuote
hi NvimDoubleQuotedBody xxx links to NvimStringBody
hi NvimDoubleQuotedEscape xxx links to NvimStringSpecial
hi NvimFigureBrace xxx links to NvimInternalError
hi NvimSingleQuotedUnknownEscape xxx links to NvimInternalError
hi NvimSpacing    xxx links to Normal
hi NvimInvalidSingleQuotedUnknownEscape xxx links to NvimInternalError
hi NvimInvalid    xxx links to Error
hi NvimInvalidAssignment xxx links to NvimInvalid
hi NvimInvalidPlainAssignment xxx links to NvimInvalidAssignment
hi NvimInvalidAugmentedAssignment xxx links to NvimInvalidAssignment
hi NvimInvalidAssignmentWithAddition xxx links to NvimInvalidAugmentedAssignment
hi NvimInvalidAssignmentWithSubtraction xxx links to NvimInvalidAugmentedAssignment
hi NvimInvalidAssignmentWithConcatenation xxx links to NvimInvalidAugmentedAssignment
hi NvimInvalidOperator xxx links to NvimInvalid
hi NvimInvalidUnaryOperator xxx links to NvimInvalidOperator
hi NvimInvalidUnaryPlus xxx links to NvimInvalidUnaryOperator
hi NvimInvalidUnaryMinus xxx links to NvimInvalidUnaryOperator
hi NvimInvalidNot xxx links to NvimInvalidUnaryOperator
hi NvimInvalidBinaryOperator xxx links to NvimInvalidOperator
hi NvimInvalidComparison xxx links to NvimInvalidBinaryOperator
hi NvimInvalidComparisonModifier xxx links to NvimInvalidComparison
hi NvimInvalidBinaryPlus xxx links to NvimInvalidBinaryOperator
hi NvimInvalidBinaryMinus xxx links to NvimInvalidBinaryOperator
hi NvimInvalidConcat xxx links to NvimInvalidBinaryOperator
hi NvimInvalidConcatOrSubscript xxx links to NvimInvalidConcat
hi NvimInvalidOr  xxx links to NvimInvalidBinaryOperator
hi NvimInvalidAnd xxx links to NvimInvalidBinaryOperator
hi NvimInvalidMultiplication xxx links to NvimInvalidBinaryOperator
hi NvimInvalidDivision xxx links to NvimInvalidBinaryOperator
hi NvimInvalidMod xxx links to NvimInvalidBinaryOperator
hi NvimInvalidTernary xxx links to NvimInvalidOperator
hi NvimInvalidTernaryColon xxx links to NvimInvalidTernary
hi NvimInvalidDelimiter xxx links to NvimInvalid
hi NvimInvalidParenthesis xxx links to NvimInvalidDelimiter
hi NvimInvalidLambda xxx links to NvimInvalidParenthesis
hi NvimInvalidNestingParenthesis xxx links to NvimInvalidParenthesis
hi NvimInvalidCallingParenthesis xxx links to NvimInvalidParenthesis
hi NvimInvalidSubscript xxx links to NvimInvalidParenthesis
hi NvimInvalidSubscriptBracket xxx links to NvimInvalidSubscript
hi NvimInvalidSubscriptColon xxx links to NvimInvalidSubscript
hi NvimInvalidCurly xxx links to NvimInvalidSubscript
hi NvimInvalidContainer xxx links to NvimInvalidParenthesis
hi NvimInvalidDict xxx links to NvimInvalidContainer
hi NvimInvalidList xxx links to NvimInvalidContainer
hi NvimInvalidValue xxx links to NvimInvalid
hi NvimInvalidIdentifier xxx links to NvimInvalidValue
hi NvimInvalidIdentifierScope xxx links to NvimInvalidIdentifier
hi NvimInvalidIdentifierScopeDelimiter xxx links to NvimInvalidIdentifier
hi NvimInvalidIdentifierName xxx links to NvimInvalidIdentifier
hi NvimInvalidIdentifierKey xxx links to NvimInvalidIdentifier
hi NvimInvalidColon xxx links to NvimInvalidDelimiter
hi NvimInvalidComma xxx links to NvimInvalidDelimiter
hi NvimInvalidArrow xxx links to NvimInvalidDelimiter
hi NvimInvalidRegister xxx links to NvimInvalidValue
hi NvimInvalidNumber xxx links to NvimInvalidValue
hi NvimInvalidFloat xxx links to NvimInvalidNumber
hi NvimInvalidNumberPrefix xxx links to NvimInvalidNumber
hi NvimInvalidOptionSigil xxx links to NvimInvalidIdentifier
hi NvimInvalidOptionName xxx links to NvimInvalidIdentifier
hi NvimInvalidOptionScope xxx links to NvimInvalidIdentifierScope
hi NvimInvalidOptionScopeDelimiter xxx links to NvimInvalidIdentifierScopeDelimiter
hi NvimInvalidEnvironmentSigil xxx links to NvimInvalidOptionSigil
hi NvimInvalidEnvironmentName xxx links to NvimInvalidIdentifier
hi NvimInvalidString xxx links to NvimInvalidValue
hi NvimInvalidStringBody xxx links to NvimStringBody
hi NvimInvalidStringQuote xxx links to NvimInvalidString
hi NvimInvalidStringSpecial xxx links to NvimStringSpecial
hi NvimInvalidSingleQuote xxx links to NvimInvalidStringQuote
hi NvimInvalidSingleQuotedBody xxx links to NvimInvalidStringBody
hi NvimInvalidSingleQuotedQuote xxx links to NvimInvalidStringSpecial
hi NvimInvalidDoubleQuote xxx links to NvimInvalidStringQuote
hi NvimInvalidDoubleQuotedBody xxx links to NvimInvalidStringBody
hi NvimInvalidDoubleQuotedEscape xxx links to NvimInvalidStringSpecial
hi NvimInvalidDoubleQuotedUnknownEscape xxx links to NvimInvalidValue
hi NvimInvalidFigureBrace xxx links to NvimInvalidDelimiter
hi NvimInvalidSpacing xxx links to ErrorMsg
hi NvimDoubleQuotedUnknownEscape xxx links to NvimInvalidValue
hi VisualNOS      xxx ctermbg=23 guibg=#007173
hi StringDelimiter xxx ctermfg=137 guifg=#BE9873
hi StatusLineTerm xxx cterm=bold,reverse ctermfg=95 ctermbg=187 gui=bold,reverse guifg=#9A7372 guibg=#DFDEBD
hi StatusLineTermNC xxx cterm=bold,reverse ctermfg=239 ctermbg=187 gui=bold,reverse guifg=#616161 guibg=#DFDEBD
hi diffAdded      xxx ctermfg=108 guifg=#98BC99
hi diffRemoved    xxx ctermfg=174 guifg=#E09B99
hi diffLine       xxx links to Constant
hi IndentGuidesOdd xxx ctermbg=236 guibg=#3F3F3F
hi IndentGuidesEven xxx ctermbg=238 guibg=#565656
hi GitGutterAdd   xxx ctermfg=108 ctermbg=238 guifg=#98BC99 guibg=#565656
hi GitGutterChange xxx ctermfg=68 ctermbg=238 guifg=#719CDF guibg=#565656
hi GitGutterDelete xxx ctermfg=161 ctermbg=238 guifg=#E12672 guibg=#565656
hi GitGutterChangeDelete xxx ctermfg=168 ctermbg=238 guifg=#E17899 guibg=#565656
hi ALEErrorSign   xxx ctermfg=161 ctermbg=237 guifg=#E12672 guibg=#4B4B4B
hi ALEWarningSign xxx ctermfg=174 ctermbg=237 guifg=#E09B99 guibg=#4B4B4B
hi SignifySignAdd xxx ctermfg=108 ctermbg=238 guifg=#98BC99 guibg=#565656
hi SignifySignChange xxx ctermfg=68 ctermbg=238 guifg=#719CDF guibg=#565656
hi SignifySignDelete xxx ctermfg=161 ctermbg=238 guifg=#E12672 guibg=#565656
hi CocFloating    xxx ctermfg=252 ctermbg=235 guifg=#D9D9D9 guibg=#333233
hi ExtraWhitespace xxx ctermbg=236 guibg=#3F3F3F
hi rubyClass      xxx ctermfg=31 guifg=#0099BD
hi rubyRegexp     xxx ctermfg=186 guifg=#DEDD99
hi rubyRegexpDelimiter xxx ctermfg=168 guifg=#E17899
hi rubyArrayDelimiter xxx ctermfg=67 guifg=#7299BC
hi rubyBlockParameterList xxx ctermfg=186 guifg=#DEDD99
hi rubyCurlyBlockDelimiter xxx ctermfg=144 guifg=#BDBC98
hi rubyPredefinedIdentifier xxx ctermfg=230 guifg=#FFFFDF
hi CocErrorSign   xxx ctermfg=9 guifg=#ff0000
hi CocWarningSign xxx ctermfg=130 guifg=#ff922b
hi CocInfoSign    xxx ctermfg=11 guifg=#fab005
hi CocHintSign    xxx ctermfg=12 guifg=#15aabf
hi CocSelectedText xxx ctermfg=9 guifg=#fb4934
hi CocCodeLens    xxx ctermfg=248 guifg=#999999
hi CocUnderline   xxx cterm=underline gui=underline
hi CocBold        xxx cterm=bold gui=bold
hi CocItalic      xxx cterm=italic gui=italic
hi CocStrikeThrough xxx cterm=strikethrough gui=strikethrough
hi CocMarkdownLink xxx ctermfg=12 guifg=#15aabf
hi CocDisabled    xxx ctermfg=248 guifg=#999999
hi CocFadeOut     xxx links to Conceal
hi CocMarkdownCode xxx links to markdownCode
hi markdownCode   xxx cleared
hi CocMarkdownHeader xxx links to markdownH1
hi markdownH1     xxx cleared
hi CocMenuSel     xxx links to PmenuSel
hi CocErrorFloat  xxx links to CocErrorSign
hi CocWarningFloat xxx links to CocWarningSign
hi CocInfoFloat   xxx links to CocInfoSign
hi CocHintFloat   xxx links to CocHintSign
hi CocErrorHighlight xxx links to CocUnderline
hi CocWarningHighlight xxx links to CocUnderline
hi CocInfoHighlight xxx links to CocUnderline
hi CocHintHighlight xxx links to CocUnderline
hi CocDeprecatedHighlight xxx links to CocStrikeThrough
hi CocUnusedHighlight xxx links to CocFadeOut
hi CocListMode    xxx links to ModeMsg
hi CocListPath    xxx links to Comment
hi CocHighlightText xxx links to CursorColumn
hi CocHoverRange  xxx links to Search
hi CocCursorRange xxx links to Search
hi CocHighlightRead xxx links to CocHighlightText
hi CocHighlightWrite xxx links to CocHighlightText
hi CocSnippetVisual xxx links to Visual
hi CocTreeTitle   xxx links to Title
hi CocTreeDescription xxx links to Comment
hi CocTreeOpenClose xxx links to CocBold
hi CocTreeSelected xxx links to CursorLine
hi CocSelectedRange xxx links to CocHighlightText
hi CocSymbolDefault xxx links to MoreMsg
hi CocSymbolFile  xxx links to Statement
hi CocSymbolModule xxx links to Statement
hi CocSymbolNamespace xxx links to Statement
hi CocSymbolPackage xxx links to Statement
hi CocSymbolClass xxx links to Statement
hi CocSymbolMethod xxx links to Function
hi CocSymbolProperty xxx links to Keyword
hi CocSymbolField xxx links to CocSymbolDefault
hi CocSymbolConstructor xxx links to Function
hi CocSymbolEnum  xxx links to CocSymbolDefault
hi CocSymbolInterface xxx links to CocSymbolDefault
hi CocSymbolFunction xxx links to Function
hi CocSymbolVariable xxx links to CocSymbolDefault
hi CocSymbolConstant xxx links to Constant
hi CocSymbolString xxx links to String
hi CocSymbolNumber xxx links to Number
hi CocSymbolBoolean xxx links to Boolean
hi CocSymbolArray xxx links to CocSymbolDefault
hi CocSymbolObject xxx links to CocSymbolDefault
hi CocSymbolKey   xxx links to Keyword
hi CocSymbolNull  xxx links to Type
hi CocSymbolEnumMember xxx links to CocSymbolDefault
hi CocSymbolStruct xxx links to Keyword
hi CocSymbolEvent xxx links to Keyword
hi CocSymbolOperator xxx links to Operator
hi CocSymbolTypeParameter xxx links to Operator
hi CocCursorTransparent xxx gui=strikethrough blend=100
hi CocErrorVirtualText xxx links to CocErrorSign
hi CocWarningVirtualText xxx links to CocWarningSign
hi CocInfoVirtualText xxx links to CocInfoSign
hi CocHintVirtualText xxx links to CocHintSign
hi CocListBlackBlack xxx guifg=#282828 guibg=#282828
hi CocListBlackBlue xxx guifg=#282828 guibg=#458588
hi CocListBlackGreen xxx guifg=#282828 guibg=#98971a
hi CocListBlackGrey xxx guifg=#282828 guibg=#928374
hi CocListBlackWhite xxx guifg=#282828 guibg=#a89984
hi CocListBlackCyan xxx guifg=#282828 guibg=#689d6a
hi CocListBlackYellow xxx guifg=#282828 guibg=#d79921
hi CocListBlackMagenta xxx guifg=#282828 guibg=#b16286
hi CocListBlackRed xxx guifg=#282828 guibg=#cc241d
hi CocListFgBlack xxx ctermfg=0 guifg=#282828
hi CocListBgBlack xxx ctermbg=0 guibg=#282828
hi CocListBlueBlack xxx guifg=#458588 guibg=#282828
hi CocListBlueBlue xxx guifg=#458588 guibg=#458588
hi CocListBlueGreen xxx guifg=#458588 guibg=#98971a
hi CocListBlueGrey xxx guifg=#458588 guibg=#928374
hi CocListBlueWhite xxx guifg=#458588 guibg=#a89984
hi CocListBlueCyan xxx guifg=#458588 guibg=#689d6a
hi CocListBlueYellow xxx guifg=#458588 guibg=#d79921
hi CocListBlueMagenta xxx guifg=#458588 guibg=#b16286
hi CocListBlueRed xxx guifg=#458588 guibg=#cc241d
hi CocListFgBlue  xxx ctermfg=12 guifg=#458588
hi CocListBgBlue  xxx ctermbg=12 guibg=#458588
hi CocListGreenBlack xxx guifg=#98971a guibg=#282828
hi CocListGreenBlue xxx guifg=#98971a guibg=#458588
hi CocListGreenGreen xxx guifg=#98971a guibg=#98971a
hi CocListGreenGrey xxx guifg=#98971a guibg=#928374
hi CocListGreenWhite xxx guifg=#98971a guibg=#a89984
hi CocListGreenCyan xxx guifg=#98971a guibg=#689d6a
hi CocListGreenYellow xxx guifg=#98971a guibg=#d79921
hi CocListGreenMagenta xxx guifg=#98971a guibg=#b16286
hi CocListGreenRed xxx guifg=#98971a guibg=#cc241d
hi CocListFgGreen xxx ctermfg=10 guifg=#98971a
hi CocListBgGreen xxx ctermbg=10 guibg=#98971a
hi CocListGreyBlack xxx guifg=#928374 guibg=#282828
hi CocListGreyBlue xxx guifg=#928374 guibg=#458588
hi CocListGreyGreen xxx guifg=#928374 guibg=#98971a
hi CocListGreyGrey xxx guifg=#928374 guibg=#928374
hi CocListGreyWhite xxx guifg=#928374 guibg=#a89984
hi CocListGreyCyan xxx guifg=#928374 guibg=#689d6a
hi CocListGreyYellow xxx guifg=#928374 guibg=#d79921
hi CocListGreyMagenta xxx guifg=#928374 guibg=#b16286
hi CocListGreyRed xxx guifg=#928374 guibg=#cc241d
hi CocListFgGrey  xxx ctermfg=248 guifg=#928374
hi CocListBgGrey  xxx ctermbg=248 guibg=#928374
hi CocListWhiteBlack xxx guifg=#a89984 guibg=#282828
hi CocListWhiteBlue xxx guifg=#a89984 guibg=#458588
hi CocListWhiteGreen xxx guifg=#a89984 guibg=#98971a
hi CocListWhiteGrey xxx guifg=#a89984 guibg=#928374
hi CocListWhiteWhite xxx guifg=#a89984 guibg=#a89984
hi CocListWhiteCyan xxx guifg=#a89984 guibg=#689d6a
hi CocListWhiteYellow xxx guifg=#a89984 guibg=#d79921
hi CocListWhiteMagenta xxx guifg=#a89984 guibg=#b16286
hi CocListWhiteRed xxx guifg=#a89984 guibg=#cc241d
hi CocListFgWhite xxx ctermfg=15 guifg=#a89984
hi CocListBgWhite xxx ctermbg=15 guibg=#a89984
hi CocListCyanBlack xxx guifg=#689d6a guibg=#282828
hi CocListCyanBlue xxx guifg=#689d6a guibg=#458588
hi CocListCyanGreen xxx guifg=#689d6a guibg=#98971a
hi CocListCyanGrey xxx guifg=#689d6a guibg=#928374
hi CocListCyanWhite xxx guifg=#689d6a guibg=#a89984
hi CocListCyanCyan xxx guifg=#689d6a guibg=#689d6a
hi CocListCyanYellow xxx guifg=#689d6a guibg=#d79921
hi CocListCyanMagenta xxx guifg=#689d6a guibg=#b16286
hi CocListCyanRed xxx guifg=#689d6a guibg=#cc241d
hi CocListFgCyan  xxx ctermfg=14 guifg=#689d6a
hi CocListBgCyan  xxx ctermbg=14 guibg=#689d6a
hi CocListYellowBlack xxx guifg=#d79921 guibg=#282828
hi CocListYellowBlue xxx guifg=#d79921 guibg=#458588
hi CocListYellowGreen xxx guifg=#d79921 guibg=#98971a
hi CocListYellowGrey xxx guifg=#d79921 guibg=#928374
hi CocListYellowWhite xxx guifg=#d79921 guibg=#a89984
hi CocListYellowCyan xxx guifg=#d79921 guibg=#689d6a
hi CocListYellowYellow xxx guifg=#d79921 guibg=#d79921
hi CocListYellowMagenta xxx guifg=#d79921 guibg=#b16286
hi CocListYellowRed xxx guifg=#d79921 guibg=#cc241d
hi CocListFgYellow xxx ctermfg=11 guifg=#d79921
hi CocListBgYellow xxx ctermbg=11 guibg=#d79921
hi CocListMagentaBlack xxx guifg=#b16286 guibg=#282828
hi CocListMagentaBlue xxx guifg=#b16286 guibg=#458588
hi CocListMagentaGreen xxx guifg=#b16286 guibg=#98971a
hi CocListMagentaGrey xxx guifg=#b16286 guibg=#928374
hi CocListMagentaWhite xxx guifg=#b16286 guibg=#a89984
hi CocListMagentaCyan xxx guifg=#b16286 guibg=#689d6a
hi CocListMagentaYellow xxx guifg=#b16286 guibg=#d79921
hi CocListMagentaMagenta xxx guifg=#b16286 guibg=#b16286
hi CocListMagentaRed xxx guifg=#b16286 guibg=#cc241d
hi CocListFgMagenta xxx ctermfg=13 guifg=#b16286
hi CocListBgMagenta xxx ctermbg=13 guibg=#b16286
hi CocListRedBlack xxx guifg=#cc241d guibg=#282828
hi CocListRedBlue xxx guifg=#cc241d guibg=#458588
hi CocListRedGreen xxx guifg=#cc241d guibg=#98971a
hi CocListRedGrey xxx guifg=#cc241d guibg=#928374
hi CocListRedWhite xxx guifg=#cc241d guibg=#a89984
hi CocListRedCyan xxx guifg=#cc241d guibg=#689d6a
hi CocListRedYellow xxx guifg=#cc241d guibg=#d79921
hi CocListRedMagenta xxx guifg=#cc241d guibg=#b16286
hi CocListRedRed  xxx guifg=#cc241d guibg=#cc241d
hi CocListFgRed   xxx ctermfg=9 guifg=#cc241d
hi CocListBgRed   xxx ctermbg=9 guibg=#cc241d
hi CocSemNumber   xxx links to Number
hi CocSemFunction xxx links to Function
hi CocSemKeyword  xxx links to Keyword
hi CocSemParameter xxx links to Identifier
hi CocSemEvent    xxx links to Keyword
hi CocSemModifier xxx links to StorageClass
hi CocSemMacro    xxx links to Define
hi CocSemDeprecated xxx links to CocDeprecatedHighlight
hi CocSemClass    xxx links to Special
hi CocSemDecorator xxx links to Identifier
hi CocSemOperator xxx links to Operator
hi CocSemStruct   xxx links to Identifier
hi CocSemRegexp   xxx links to String
hi CocSemMethod   xxx links to Function
hi CocSemComment  xxx links to Comment
hi CocSemEnum     xxx links to Type
hi CocSemInterface xxx links to Type
hi CocSemType     xxx links to Type
hi CocSemProperty xxx links to Identifier
hi CocSemTypeParameter xxx links to Identifier
hi CocSemEnumMember xxx links to Constant
hi CocSemBoolean  xxx links to Boolean
hi CocSemNamespace xxx links to Include
hi CocSemString   xxx links to String
hi CocSemVariable xxx links to Identifier
hi TSNone         xxx ctermfg=252 guifg=foreground
hi TSPunctDelimiter xxx links to Delimiter
hi TSPunctBracket xxx links to Delimiter
hi TSPunctSpecial xxx links to Delimiter
hi TSConstant     xxx links to Constant
hi TSConstBuiltin xxx links to Special
hi TSConstMacro   xxx links to Define
hi TSString       xxx links to String
hi TSStringRegex  xxx links to String
hi TSStringEscape xxx links to SpecialChar
hi TSStringSpecial xxx links to SpecialChar
hi TSCharacter    xxx links to Character
hi TSNumber       xxx links to Number
hi TSBoolean      xxx links to Boolean
hi TSFloat        xxx links to Float
hi TSFunction     xxx links to Function
hi TSFuncBuiltin  xxx links to Special
hi TSFuncMacro    xxx links to Macro
hi TSParameter    xxx links to Identifier
hi TSParameterReference xxx links to TSParameter
hi TSMethod       xxx links to Function
hi TSField        xxx links to Identifier
hi TSProperty     xxx links to Identifier
hi TSConstructor  xxx links to Special
hi TSAnnotation   xxx links to PreProc
hi TSAttribute    xxx links to PreProc
hi TSNamespace    xxx links to Include
hi TSSymbol       xxx links to Identifier
hi TSConditional  xxx links to Conditional
hi TSRepeat       xxx links to Repeat
hi TSLabel        xxx links to Label
hi TSOperator     xxx links to Operator
hi TSKeyword      xxx links to Keyword
hi TSKeywordFunction xxx links to Keyword
hi TSKeywordOperator xxx links to TSOperator
hi TSKeywordReturn xxx links to TSKeyword
hi TSException    xxx links to Exception
hi TSType         xxx links to Type
hi TSTypeBuiltin  xxx links to Type
hi TSInclude      xxx links to Include
hi TSVariableBuiltin xxx links to Special
hi TSText         xxx links to TSNone
hi TSStrong       xxx cterm=bold gui=bold
hi TSEmphasis     xxx cterm=italic gui=italic
hi TSUnderline    xxx cterm=underline gui=underline
hi TSStrike       xxx cterm=strikethrough gui=strikethrough
hi TSMath         xxx links to Special
hi TSTextReference xxx links to Constant
hi TSEnvironment  xxx links to Macro
hi TSEnvironmentName xxx links to Type
hi TSTitle        xxx links to Title
hi TSLiteral      xxx links to String
hi TSURI          xxx links to Underlined
hi TSComment      xxx links to Comment
hi TSNote         xxx links to SpecialComment
hi TSWarning      xxx links to Todo
hi TSDanger       xxx links to WarningMsg
hi TSTag          xxx links to Label
hi TSTagDelimiter xxx links to Delimiter
hi TSTagAttribute xxx links to TSProperty
hi airline_x_inactive xxx ctermfg=249 ctermbg=236 guifg=#BFBFBF guibg=#3F3F3F
hi airline_x_inactive_bold xxx cterm=bold ctermfg=249 ctermbg=236 gui=bold guifg=#BFBFBF guibg=#3F3F3F
hi airline_x_inactive_red xxx ctermfg=216 ctermbg=236 guifg=#FFBD98 guibg=#3F3F3F
hi airline_y_inactive xxx ctermfg=249 ctermbg=236 guifg=#BFBFBF guibg=#3F3F3F
hi airline_y_inactive_bold xxx cterm=bold ctermfg=249 ctermbg=236 gui=bold guifg=#BFBFBF guibg=#3F3F3F
hi airline_y_inactive_red xxx ctermfg=216 ctermbg=236 guifg=#FFBD98 guibg=#3F3F3F
hi airline_z_inactive xxx ctermfg=249 ctermbg=236 guifg=#BFBFBF guibg=#3F3F3F
hi airline_z_inactive_bold xxx cterm=bold ctermfg=249 ctermbg=236 gui=bold guifg=#BFBFBF guibg=#3F3F3F
hi airline_z_inactive_red xxx ctermfg=216 ctermbg=236 guifg=#FFBD98 guibg=#3F3F3F
hi airline_term_inactive xxx ctermfg=85 ctermbg=232 guifg=#9cffd3 guibg=#202020
hi airline_term_inactive_bold xxx cterm=bold ctermfg=85 ctermbg=232 gui=bold guifg=#9cffd3 guibg=#202020
hi airline_term_inactive_red xxx ctermfg=216 ctermbg=232 guifg=#FFBD98 guibg=#202020
hi airline_error_inactive xxx ctermfg=232 ctermbg=160 guifg=#000000 guibg=#990000
hi airline_error_inactive_bold xxx cterm=bold ctermfg=232 ctermbg=160 gui=bold guifg=#000000 guibg=#990000
hi airline_error_inactive_red xxx ctermfg=216 ctermbg=160 guifg=#FFBD98 guibg=#990000
hi airline_a_inactive xxx ctermfg=249 ctermbg=236 guifg=#BFBFBF guibg=#3F3F3F
hi airline_a_inactive_bold xxx cterm=bold ctermfg=249 ctermbg=236 gui=bold guifg=#BFBFBF guibg=#3F3F3F
hi airline_a_inactive_red xxx ctermfg=216 ctermbg=236 guifg=#FFBD98 guibg=#3F3F3F
hi airline_b_inactive xxx ctermfg=249 ctermbg=236 guifg=#BFBFBF guibg=#3F3F3F
hi airline_b_inactive_bold xxx cterm=bold ctermfg=249 ctermbg=236 gui=bold guifg=#BFBFBF guibg=#3F3F3F
hi airline_b_inactive_red xxx ctermfg=216 ctermbg=236 guifg=#FFBD98 guibg=#3F3F3F
hi airline_c_inactive xxx ctermfg=249 ctermbg=236 guifg=#BFBFBF guibg=#3F3F3F
hi airline_c_inactive_bold xxx cterm=bold ctermfg=249 ctermbg=236 gui=bold guifg=#BFBFBF guibg=#3F3F3F
hi airline_c_inactive_red xxx ctermfg=216 ctermbg=236 guifg=#FFBD98 guibg=#3F3F3F
hi airline_warning_inactive xxx ctermfg=232 ctermbg=166 guifg=#000000 guibg=#df5f00
hi airline_warning_inactive_bold xxx cterm=bold ctermfg=232 ctermbg=166 gui=bold guifg=#000000 guibg=#df5f00
hi airline_warning_inactive_red xxx ctermfg=216 ctermbg=166 guifg=#FFBD98 guibg=#df5f00
hi airline_x      xxx ctermfg=187 ctermbg=236 guifg=#DFDEBD guibg=#3F3F3F
hi airline_x_bold xxx cterm=bold ctermfg=187 ctermbg=236 gui=bold guifg=#DFDEBD guibg=#3F3F3F
hi airline_x_red  xxx ctermfg=216 ctermbg=236 guifg=#FFBD98 guibg=#3F3F3F
hi airline_y      xxx ctermfg=187 ctermbg=239 guifg=#DFDEBD guibg=#616161
hi airline_y_bold xxx cterm=bold ctermfg=187 ctermbg=239 gui=bold guifg=#DFDEBD guibg=#616161
hi airline_y_red  xxx ctermfg=216 ctermbg=239 guifg=#FFBD98 guibg=#616161
hi airline_z      xxx ctermfg=237 ctermbg=95 guifg=#4B4B4B guibg=#9A7372
hi airline_z_bold xxx cterm=bold ctermfg=237 ctermbg=95 gui=bold guifg=#4B4B4B guibg=#9A7372
hi airline_z_red  xxx ctermfg=216 ctermbg=95 guifg=#FFBD98 guibg=#9A7372
hi airline_term   xxx ctermfg=85 ctermbg=232 guifg=#9cffd3 guibg=#202020
hi airline_term_bold xxx cterm=bold ctermfg=85 ctermbg=232 gui=bold guifg=#9cffd3 guibg=#202020
hi airline_term_red xxx ctermfg=216 ctermbg=232 guifg=#FFBD98 guibg=#202020
hi airline_error  xxx ctermfg=232 ctermbg=160 guifg=#000000 guibg=#990000
hi airline_error_bold xxx cterm=bold ctermfg=232 ctermbg=160 gui=bold guifg=#000000 guibg=#990000
hi airline_error_red xxx ctermfg=216 ctermbg=160 guifg=#FFBD98 guibg=#990000
hi airline_a      xxx ctermfg=237 ctermbg=95 guifg=#4B4B4B guibg=#9A7372
hi airline_a_bold xxx cterm=bold ctermfg=237 ctermbg=95 gui=bold guifg=#4B4B4B guibg=#9A7372
hi airline_a_red  xxx ctermfg=216 ctermbg=95 guifg=#FFBD98 guibg=#9A7372
hi airline_b      xxx ctermfg=187 ctermbg=239 guifg=#DFDEBD guibg=#616161
hi airline_b_bold xxx cterm=bold ctermfg=187 ctermbg=239 gui=bold guifg=#DFDEBD guibg=#616161
hi airline_b_red  xxx ctermfg=216 ctermbg=239 guifg=#FFBD98 guibg=#616161
hi airline_c      xxx ctermfg=187 ctermbg=236 guifg=#DFDEBD guibg=#3F3F3F
hi airline_c_bold xxx cterm=bold ctermfg=187 ctermbg=236 gui=bold guifg=#DFDEBD guibg=#3F3F3F
hi airline_c_red  xxx ctermfg=216 ctermbg=236 guifg=#FFBD98 guibg=#3F3F3F
hi airline_warning xxx ctermfg=237 ctermbg=252 guifg=#4B4B4B guibg=#D9D9D9
hi airline_warning_bold xxx cterm=bold ctermfg=237 ctermbg=252 gui=bold guifg=#4B4B4B guibg=#D9D9D9
hi airline_warning_red xxx ctermfg=216 ctermbg=252 guifg=#FFBD98 guibg=#D9D9D9
hi airline_a_to_airline_b xxx ctermfg=95 ctermbg=239 guifg=#9A7372 guibg=#616161
hi airline_b_to_airline_c xxx ctermfg=239 ctermbg=236 guifg=#616161 guibg=#3F3F3F
hi airline_c_to_airline_x xxx ctermfg=236 ctermbg=236 guifg=#3F3F3F guibg=#3F3F3F
hi airline_x_to_airline_y xxx ctermfg=239 ctermbg=236 guifg=#616161 guibg=#3F3F3F
hi airline_y_to_airline_z xxx ctermfg=95 ctermbg=239 guifg=#9A7372 guibg=#616161
hi airline_z_to_airline_warning xxx ctermfg=252 ctermbg=95 guifg=#D9D9D9 guibg=#9A7372
hi airline_warning_to_airline_error xxx ctermfg=160 ctermbg=252 guifg=#990000 guibg=#D9D9D9
hi airline_c1_inactive xxx ctermfg=249 ctermbg=236 guifg=#BFBFBF guibg=#3F3F3F
hi LimelightDim   xxx guifg=#929292 guisp=bg
hi CocErrorLine   xxx cleared
hi CocWarningLine xxx cleared
hi CocInfoLine    xxx cleared
hi CocHintLine    xxx cleared
hi CocSelectedLine xxx cleared
hi vimTodo        xxx links to Todo
hi vimCommand     xxx links to Statement
hi vimOnlyCommand xxx cleared
hi vimStdPlugin   xxx cleared
hi vimOnlyOption  xxx cleared
hi vimTermOption  xxx cleared
hi vimErrSetting  xxx links to vimError
hi vimGroup       xxx links to Type
hi vimHLGroup     xxx links to vimGroup
hi vimOnlyHLGroup xxx cleared
hi nvimHLGroup    xxx links to vimHLGroup
hi vimGlobal      xxx cleared
hi vimSubst       xxx links to vimCommand
hi vimComment     xxx links to Comment
hi vim9Comment    xxx links to Comment
hi vimNumber      xxx links to Number
hi vimAddress     xxx links to vimMark
hi vimAutoCmd     xxx links to vimCommand
hi vimEcho        xxx cleared
hi vimIsCommand   xxx cleared
hi vimExtCmd      xxx cleared
hi vimFilter      xxx cleared
hi vimLet         xxx links to vimCommand
hi vimMap         xxx links to vimCommand
hi vimMark        xxx links to Number
hi vimSet         xxx cleared
hi vimSyntax      xxx links to vimCommand
hi vimUserCmd     xxx cleared
hi vimCmdSep      xxx cleared
hi vimVar         xxx links to Identifier
hi vimFBVar       xxx links to vimVar
hi vimInsert      xxx links to vimString
hi vimBehaveModel xxx links to vimBehave
hi vimBehaveError xxx links to vimError
hi vimBehave      xxx links to vimCommand
hi vimFTCmd       xxx links to vimCommand
hi vimFTOption    xxx links to vimSynType
hi vimFTError     xxx links to vimError
hi vimFiletype    xxx cleared
hi vimAugroup     xxx cleared
hi vimExecute     xxx cleared
hi vimNotFunc     xxx links to vimCommand
hi vimFuncName    xxx links to Function
hi vimFunction    xxx cleared
hi vimFunctionError xxx links to vimError
hi vimLineComment xxx links to vimComment
hi vimSpecFile    xxx links to Identifier
hi vimOper        xxx links to Operator
hi vimOperParen   xxx cleared
hi vimString      xxx links to String
hi vimRegister    xxx links to SpecialChar
hi vimCmplxRepeat xxx links to SpecialChar
hi vimRegion      xxx cleared
hi vimSynLine     xxx cleared
hi vimNotation    xxx links to Special
hi vimCtrlChar    xxx links to SpecialChar
hi vimFuncVar     xxx links to Identifier
hi vimContinue    xxx links to Special
hi vimSetEqual    xxx cleared
hi vimOption      xxx links to PreProc
hi vimAugroupKey  xxx links to vimCommand
hi vimAugroupError xxx links to vimError
hi vimEnvvar      xxx links to PreProc
hi vimFunc        xxx links to vimError
hi vimType        xxx links to Type
hi vimParenSep    xxx links to Delimiter
hi vimoperStar    xxx links to vimOper
hi vimSep         xxx links to Delimiter
hi vimOperError   xxx links to Error
hi vimFuncKey     xxx links to vimCommand
hi vimFuncSID     xxx links to Special
hi vimAbb         xxx links to vimCommand
hi vimEchoHL      xxx links to vimCommand
hi vimHighlight   xxx links to vimCommand
hi vimLetHereDoc  xxx links to vimString
hi vimNorm        xxx links to vimCommand
hi vimSearch      xxx links to vimString
hi vimUnmap       xxx links to vimMap
hi vimUserCommand xxx links to vimCommand
hi vimFuncBody    xxx cleared
hi vimFuncBlank   xxx cleared
hi vimPattern     xxx links to Type
hi vimSpecFileMod xxx links to vimSpecFile
hi vimEscapeBrace xxx cleared
hi vimSetString   xxx links to vimString
hi vimSubstRep    xxx cleared
hi vimSubstRange  xxx cleared
hi vimUserAttrb   xxx links to vimSpecial
hi vimUserAttrbError xxx links to Error
hi vimComFilter   xxx cleared
hi vimUserAttrbKey xxx links to vimOption
hi vimUserAttrbCmplt xxx links to vimSpecial
hi vimUserCmdError xxx links to Error
hi vimUserAttrbCmpltFunc xxx links to Special
hi vimCommentString xxx links to vimString
hi vimPatSepErr   xxx links to vimError
hi vimPatSep      xxx links to SpecialChar
hi vimPatSepZ     xxx links to vimPatSep
hi vimPatSepZone  xxx links to vimString
hi vimPatSepR     xxx links to vimPatSep
hi vimPatRegion   xxx cleared
hi vimNotPatSep   xxx links to vimString
hi vimStringEnd   xxx links to vimString
hi vimStringCont  xxx links to vimString
hi vimSubstTwoBS  xxx links to vimString
hi vimSubstSubstr xxx links to SpecialChar
hi vimCollection  xxx cleared
hi vimSubstPat    xxx cleared
hi vimSubst1      xxx links to vimSubst
hi vimSubst2      xxx cleared
hi vimSubstDelim  xxx links to Delimiter
hi vimSubstRep4   xxx cleared
hi vimSubstFlagErr xxx links to vimError
hi vimCollClass   xxx cleared
hi vimCollClassErr xxx links to vimError
hi vimSubstFlags  xxx links to Special
hi vimMarkNumber  xxx links to vimNumber
hi vimPlainMark   xxx links to vimMark
hi vimRange       xxx cleared
hi vimPlainRegister xxx links to vimRegister
hi vimSetMod      xxx links to vimOption
hi vimSetSep      xxx links to Statement
hi vimLetHereDocStart xxx links to Special
hi vimLetHereDocStop xxx links to Special
hi vimMapMod      xxx links to vimBracket
hi vimMapLhs      xxx cleared
hi vimAutoEvent   xxx links to Type
hi nvimAutoEvent  xxx links to vimAutoEvent
hi vimAutoCmdSpace xxx cleared
hi vimAutoEventList xxx cleared
hi vimAutoCmdSfxList xxx cleared
hi vimAutoCmdMod  xxx links to Special
hi vimEchoHLNone  xxx links to vimGroup
hi vimMapBang     xxx links to vimCommand
hi nvimMap        xxx links to vimMap
hi nvimUnmap      xxx links to vimUnmap
hi vimMapRhs      xxx cleared
hi vimMapModKey   xxx links to vimFuncSID
hi vimMapModErr   xxx links to vimError
hi vimMapRhsExtend xxx cleared
hi vimMenuBang    xxx cleared
hi vimMenuPriority xxx cleared
hi vimMenuName    xxx links to PreProc
hi vimMenuMod     xxx links to vimMapMod
hi vimMenuNameMore xxx links to vimMenuName
hi vimMenuMap     xxx cleared
hi vimMenuRhs     xxx cleared
hi vimBracket     xxx links to Delimiter
hi vimUserFunc    xxx links to Normal
hi vimUsrCmd      xxx cleared
hi vimElseIfErr   xxx links to Error
hi vimBufnrWarn   xxx links to vimWarn
hi vimNormCmds    xxx cleared
hi vimGroupSpecial xxx links to Special
hi vimGroupList   xxx cleared
hi vimSynError    xxx links to Error
hi vimSynContains xxx links to vimSynOption
hi vimSynKeyContainedin xxx links to vimSynContains
hi vimSynNextgroup xxx links to vimSynOption
hi vimSynType     xxx links to vimSpecial
hi vimAuSyntax    xxx cleared
hi vimSynCase     xxx links to Type
hi vimSynCaseError xxx links to vimError
hi vimClusterName xxx cleared
hi vimGroupName   xxx links to vimGroup
hi vimGroupAdd    xxx links to vimSynOption
hi vimGroupRem    xxx links to vimSynOption
hi vimIskList     xxx cleared
hi vimIskSep      xxx links to Delimiter
hi vimSynKeyOpt   xxx links to vimSynOption
hi vimSynKeyRegion xxx cleared
hi vimMtchComment xxx links to vimComment
hi vimSynMtchOpt  xxx links to vimSynOption
hi vimSynRegPat   xxx links to vimString
hi vimSynMatchRegion xxx cleared
hi vimSynMtchCchar xxx cleared
hi vimSynMtchGroup xxx cleared
hi vimSynPatRange xxx links to vimString
hi vimSynNotPatRange xxx links to vimSynRegPat
hi vimSynRegOpt   xxx links to vimSynOption
hi vimSynReg      xxx links to Type
hi vimSynMtchGrp  xxx links to vimSynOption
hi vimSynRegion   xxx cleared
hi vimSynPatMod   xxx cleared
hi vimSyncC       xxx links to Type
hi vimSyncLines   xxx cleared
hi vimSyncMatch   xxx cleared
hi vimSyncError   xxx links to Error
hi vimSyncLinebreak xxx cleared
hi vimSyncLinecont xxx cleared
hi vimSyncRegion  xxx cleared
hi vimSyncGroupName xxx links to vimGroupName
hi vimSyncKey     xxx links to Type
hi vimSyncGroup   xxx links to vimGroupName
hi vimSyncNone    xxx links to Type
hi vimHiLink      xxx cleared
hi vimHiClear     xxx links to vimHighlight
hi vimHiKeyList   xxx cleared
hi vimHiCtermError xxx links to vimError
hi vimHiBang      xxx cleared
hi vimHiGroup     xxx links to vimGroupName
hi vimHiAttrib    xxx links to PreProc
hi vimFgBgAttrib  xxx links to vimHiAttrib
hi vimHiAttribList xxx links to vimError
hi vimHiCtermColor xxx cleared
hi vimHiFontname  xxx cleared
hi vimHiGuiFontname xxx cleared
hi vimHiGuiRgb    xxx links to vimNumber
hi vimHiBlend     xxx links to vimHiTerm
hi vimHiTerm      xxx links to Type
hi vimHiCTerm     xxx links to vimHiTerm
hi vimHiStartStop xxx links to vimHiTerm
hi vimHiCtermFgBg xxx links to vimHiTerm
hi vimHiCtermul   xxx links to vimHiTerm
hi vimHiGui       xxx links to vimHiTerm
hi vimHiGuiFont   xxx links to vimHiTerm
hi vimHiGuiFgBg   xxx links to vimHiTerm
hi vimHiKeyError  xxx links to vimError
hi vimHiTermcap   xxx cleared
hi vimHiNmbr      xxx links to Number
hi vimCommentTitle xxx links to PreProc
hi vim9LineComment xxx links to vimComment
hi vimCommentTitleLeader xxx cleared
hi vimSearchDelim xxx links to Statement
hi vimLuaRegion   xxx cleared
hi luaTodo        xxx links to Todo
hi luaComment     xxx links to Comment
hi luaInnerComment xxx cleared
hi luaParenError  xxx links to Error
hi luaSpecial     xxx links to SpecialChar
hi luaIfThen      xxx cleared
hi luaElseifThen  xxx cleared
hi luaElse        xxx links to Conditional
hi luaThenEnd     xxx cleared
hi luaBlock       xxx cleared
hi luaLoopBlock   xxx cleared
hi luaIn          xxx links to Operator
hi luaStatement   xxx links to Statement
hi luaParen       xxx cleared
hi luaTable       xxx links to Structure
hi luaBraceError  xxx links to Error
hi luaTableBlock  xxx cleared
hi luaError       xxx links to Error
hi luaFunction    xxx links to Function
hi luaFunctionBlock xxx cleared
hi luaCond        xxx links to Conditional
hi luaRepeat      xxx links to Repeat
hi luaLabel       xxx links to Label
hi luaOperator    xxx links to Operator
hi luaConstant    xxx links to Constant
hi luaString2     xxx links to String
hi luaString      xxx links to String
hi luaNumber      xxx links to Number
hi luaFunc        xxx links to Identifier
hi luaFor         xxx links to Repeat
hi vimScriptDelim xxx links to Comment
hi vimEmbedError  xxx links to Normal
hi vimAugroupSyncA xxx cleared
hi vimError       xxx links to Error
hi vimKeyCodeError xxx links to vimError
hi vimWarn        xxx links to WarningMsg
hi vimAuHighlight xxx links to vimHighlight
hi vimAutoCmdOpt  xxx links to vimOption
hi vimAutoSet     xxx links to vimCommand
hi vimCondHL      xxx links to vimCommand
hi vimElseif      xxx links to vimCondHL
hi vimFold        xxx links to Folded
hi vimSynOption   xxx links to Special
hi vimHLMod       xxx links to PreProc
hi vimKeyCode     xxx links to vimSpecFile
hi vimKeyword     xxx links to Statement
hi vimSpecial     xxx links to Type
hi vimStatement   xxx links to Statement
