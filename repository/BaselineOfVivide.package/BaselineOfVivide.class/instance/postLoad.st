as yet unclassified
postLoad

	ViTextStyler initialize.
	ViTextStylerForClass initialize.
	
	TextEditor allSubclassesDo: [:e | e initialize].
	
	ViScriptArchive mergeAll.
	"VivideLight active ifNil: [VivideLight prepareSqueak; open]."

	(Smalltalk at: #ViToolSet ifAbsent: [])
		ifNotNil: [:ts | ToolSet default: ts].

	VivideLight profiles add: ViProfile newMinimal.

"	VivideLight profiles first in: [:p |
		p bookmarks ifEmpty: [
			ViActiveOrganizer
				value: p organization
				during: [p initializeBasicBookmarks]]]."