operations
doEditorState: anEditorState

	| outerObjects innerObjects |
	outerObjects := (anEditorState properties at: #object ifAbsent: [nil]) asList,
		anEditorState objects.
	innerObjects := (anEditorState states ifEmpty: [#()] ifNotEmpty: [:s |
		s first objects]).
	^ (outerObjects size + innerObjects size) asString, ' object(s)'