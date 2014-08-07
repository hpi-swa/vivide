as yet unclassified
postLoad

	ViTextStyler initialize.
	ViTextStylerForClass initialize.
	
	TextEditor allSubclassesDo: [:e | e initialize].
	
	(Smalltalk at: #ViToolSet ifAbsent: [])
		ifNotNil: [:ts |
			ToolSet default: ts.
			ts mergeFromDefaultArchive].
	
	"First time setup."
	ActiveVivide ifNil: [VivideLight prepareSqueak; open].