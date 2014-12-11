initialization
initializeFor: aScript in: anEnvironment

	self setProperty: #viewId toValue: self class defaultViewId.     
	self connect: self signal: #selectionChanged: to: anEnvironment selector: #notifyChangedSelection:.

	"---"

	self initializeForContainerClass: ViObjectEditor. 

	self setupBlock: [:model :container |
		model objects
			ifEmpty: [container object: nil]
			ifNotEmpty: [:objects | 
				objects size = 1
					ifTrue: [container object: objects first]
					ifFalse: [container object: objects]].
		container editVisible: true.
		container sourceCodeEdit
			theText: '"Enter code here..."';
			selectAll].

	self connect: self container contentTree signal: #selectionChanged: toSelector: #selectObjects:.