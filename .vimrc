" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup

"vim for Toshiya
	syntax on "ハイライト
	set number "行番号
	set cindent "インデント
	
	"画面上のカーソル移動
	nnoremap j gj
	nnoremap k gk
	nnoremap <Down> gj
	nnoremap <Up>   gk
	
	set encoding =utf-8
	set fileencoding =utf-8
	set fileencodings =utf-8,iso-2022-jp,euc-jp,cp932
	
	set foldmethod=indent "折りたたみ

"Vundle
	filetype off
	set rtp+=~/.vim/vundle.git/ 
	call vundle#rc()
	Bundle 'gmarik/vundle'
	
	" github にあるプラグイン
	Bundle 'jcf/vim-latex.git'
	" vim-scripts プラグイン
	
	" github にないプラグイン
	 
	" ファイル形式検出、プラグイン、インデントを ON
	filetype plugin indent on 

" Vim-LaTeX
	filetype plugin on
	filetype indent on
	set shellslash
	set grepprg=grep\ -nH\ $*
	let g:tex_flavor='latex'
	let g:Imap_UsePlaceHolders = 1
	let g:Imap_DeleteEmptyPlaceHolders = 1
	let g:Imap_StickyPlaceHolders = 0
	let g:Tex_DefaultTargetFormat = 'pdf'
	let g:Tex_FormatDependency_ps = 'dvi,ps'
	let g:Tex_FormatDependency_pdf = 'dvi,pdf'
	let g:Tex_CompileRule_dvi = 'platex --synctex=1 --interaction=nonstopmode $*'
	let g:Tex_CompileRule_ps = 'dvips -Ppdf -o $*.ps $*.dvi'
	let g:Tex_CompileRule_pdf = 'dvipdfmx $*.dvi'
	let g:Tex_BibtexFlavor = 'pbibtex'
	let g:Tex_MakeIndexFlavor = 'mendex $*.idx'
	let g:Tex_UseEditorSettingInDVIViewer = 1
	let g:Tex_ViewRule_dvi = 'dviout' 
	let g:Tex_ViewRule_ps = 'gv --watch'
	let g:Tex_ViewRule_pdf = 'open -a Preview.app' "PDFはPreview.appで開いてね

	let g:Tex_IgnoredWarnings =
		\'Underfull'."\n".
		\'Overfull'."\n".
		\'specifier changed to'."\n".
		\'You have requested'."\n".
		\'Missing number, treated as zero.'."\n".
		\'There were undefined references'."\n".
		\'Citation %.%# undefined'."\n".
		\"Font shape \`JT1/mc/m/it\' undefined"."\n".
		\"Font shape \`JT1/mc/m/sl\' undefined"."\n".
		\"Font shape \`JY1/mc/m/it\' undefined"."\n".
		\"Font shape \`JY1/mc/m/sl\' undefined"."\n".
		\'LaTeX Font Warning: Some font shapes were not available, defaults substituted.'
	let g:Tex_IgnoreLevel = 12
