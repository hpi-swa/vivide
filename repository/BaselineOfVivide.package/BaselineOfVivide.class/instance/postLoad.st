as yet unclassified
postLoad

	ViTextStyler initialize.
	ViTextStylerForClass initialize.
	
	TextEditor allSubclassesDo: [:e | e initialize].
	
	ViScriptArchive mergeAll.
	"VivideLight active ifNil: [VivideLight prepareSqueak; open]."

	(Smalltalk at: #ViToolSet ifAbsent: [])
		ifNotNil: [:ts | ToolSet default: ts].

	"ViProfile active bookmarks ifEmpty: [
		ViProfile active initializeBasicBookmarks.
		VivideLight openProfile: ViProfile active]"