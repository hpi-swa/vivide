as yet unclassified
initialize

	super initialize.
	self initializeForContainerClass: ViProtocolEditor.

	"Replace this view with ViEditorView ?!"
	self setupBlock: [:model :container |
		model objects
			ifEmpty: [container object: nil]
			ifNotEmpty: [:objects | 
				objects size = 1
					ifTrue: [container object: objects first]
					ifFalse: [container object: objects]]].