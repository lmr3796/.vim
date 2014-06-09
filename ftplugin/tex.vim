" Spell checking
setlocal spell

" Prof. Liu's request
setlocal textwidth=72

" This is mostly a matter of taste. but LaTeX looks good with just a bit
" of indentation.
setlocal ts=2 sts=2 sw=2 expandtab

" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
setlocal iskeyword+=:


" Compile: dvi -> ps -> pdf
let g:Tex_FormatDependency_pdf = 'dvi,ps,pdf'
let g:Tex_CompileRule_dvi = 'latex --interaction=nonstopmode $*'
let g:Tex_CompileRule_ps = 'dvips -Ppdf -o $*.ps $*.dvi'
let g:Tex_CompileRule_pdf = 'ps2pdf $*.ps'
