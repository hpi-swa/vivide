as yet unclassified
postLoad

	ViTextStyler initialize.
	ViTextStylerForClass initialize.
	
	TextEditor allSubclassesDo: [:e | e initialize].
	
	VivideLight profiles ifEmpty: [
		(ViQueryOrganizer respondsTo: #default)
			ifTrue: [ViProfile migrate]
			ifFalse: [VivideLight profiles add: ViProfile newEmpty]].

	VivideLight active ifNil: [VivideLight prepareSqueak; open].

	(Smalltalk at: #ViToolSet ifAbsent: [])
		ifNotNil: [:ts |
			ToolSet default: ts.
			ts mergeFromDefaultArchive].