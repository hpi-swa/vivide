accessing
setProperties: someProperties to: anEditorState
	
	someProperties do: [:prop |
		anEditorState properties
			at: prop first
			put: prop second].