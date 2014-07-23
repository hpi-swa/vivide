updating
onContextChanged

	self updateContext.
	
	snippetPanel visible ifTrue: [
		snippetPanel updateForObjects: self context].
	
	self updateToolbars.