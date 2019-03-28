initialization
initialize

	super initialize.
	self initializeForContainerClass: ViObjectEditor. 

	self setupBlock: [:model :container |
		model objects
			ifEmpty: [container object: nil]
			ifNotEmpty: [:objects | 
				objects size = 1
					ifTrue: [container object: objects first]
					ifFalse: [container object: objects]].
		"container editVisible: false."
		"container turnOnAutoRefresh."
"		container sourceCodeEdit
			theText: '';
			selectAll"].

	self connect: self container contentTree signal: #selectionChanged: toSelector: #selectObjects:.