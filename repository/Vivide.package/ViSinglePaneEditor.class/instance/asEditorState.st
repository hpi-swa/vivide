as yet unclassified
asEditorState

	^ ViEditorState new
		in: [:s | self saveState: s];
		yourself