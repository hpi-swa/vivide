memento - data
acceptSourceCode

	edit hasUnacceptedChanges
		ifTrue: [^ edit acceptChanges].
		
	self definition
		sourceCode: self currentSourceCode;
		register.
		
	"Put it in the archive."
	ViQuerySerializer
		updateDefinition: self definition
		inQueryArchive: ViQueryArchive.
	self updateToolbars.