actions - open
openQueries: someQueries withObjects: someObjects

	| input wnd hasOutputPage |
	hasOutputPage := false.
	input := someObjects.
	
	self flag: #badWindowHeight. "mt: We should  set the window height AFTER opening all chained windows."
	wnd := ViMultiPaneEditor new openInWindow.
	
	self flag: #refactor. "mt: Let multipane editor handle this"
	someQueries
		do: [:q |
			q ifNotNil: [
				wnd editor addPane: (ViPane new
					objects: input;
					currentQuery: (ViQueryStep convert: q);
					yourself).
				"Immitate selection. How to actually select?"
				input := wnd editor panes last visibleResults
					ifEmpty: [#()] ifNotEmpty: [:objs | {objs first}]].
			hasOutputPage := true].

	self flag: #magicNumber. "mt: Same for opening the debugger query."
	hasOutputPage ifTrue: [wnd height: 500].
	^ wnd