as yet unclassified
postLoad

	ViTextStyler initialize.
	ViTextStylerForClass initialize.
	
	TextEditor allSubclassesDo: [:e | e initialize].
				
	Preferences
		addBooleanPreference: #useVivideDebugger
		categories: #('Vivide')
		default: true
		balloonHelp: 'Let''s you choose between default debugging and Vivide integration.'.
		
	Preferences
		addTextPreference: #feedbackServer
		categories: #('Vivide')
		default: 'http://www.hpi.uni-potsdam.de/hirschfeld/vivide-feedback/feedback'
		balloonHelp: 'Where are feedback reports posted to?'.
	
	(Smalltalk at: #ViToolSet ifAbsent: [])
		ifNotNil: [:ts | ToolSet default: ts].
	
	"First time setup."
	ActiveVivide ifNil: [VivideLight prepareSqueak; open].