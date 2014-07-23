updating
updateSnippet

	snippet contents: snippetEdit theText asString copy.
	
	(self object respondsTo: #bindings:) ifTrue: [
		snippet bindings: snippetEdit model bindings copy].