as yet unclassified
initialize

	super initialize.
	textView := PluggableTextMorphPlus
		on: self
		text: #text
		accept: #text:
		readSelection: #textSelection
		menu: nil.
	textView
		hResizing: #spaceFill;
		vResizing: #spaceFill.
	self
		color: Color transparent;
		changeTableLayout;
		addMorph: textView.