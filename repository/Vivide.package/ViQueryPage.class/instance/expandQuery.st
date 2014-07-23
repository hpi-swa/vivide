actions
expandQuery

	| queries wnd |
	queries := ViQueryStep expand: self currentQuery.
	queries ifEmpty: [^ self].
	
	wnd := self editor window.
	wnd unglue.

	self currentQuery: queries first.
	queries allButFirst do: [:step |
		wnd addStickyWindow: #right mode: #selection.
		wnd := wnd rightWindow.
		wnd editor addOutputPage: step].