actions - open
openArtifacts: someObjects

	| objects |
	someObjects size = 1
		ifTrue: [^ self openArtifact: someObjects first].
	
	objects := someObjects.
	
	(someObjects detect: [:obj | obj isKindOf: ViScriptPart] ifNone: [])
		ifNotNil: [:script | 
			ViProfile active ifNotNil: [:profile |
				profile recentScripts addObject: script].
			
			(script steps hasEqualElements: someObjects) ifFalse: [
				"Open the script and the rest as input if it."
				objects := {someObjects copyWithoutAll: script steps}, script steps]].
	
	self flag: #evaluate. "mt: Unwrap name bindings."
	objects := (self currentEvent in: [:evt | evt isDropEvent and: [evt contents hasFlag: #evaluate]])
		ifTrue: [objects collect: [:o | o value]] ifFalse: [objects].
	
	^ VivideLight useClassicMode
		ifTrue: [self chooseScriptFor: objects]
		ifFalse: [ViSinglePaneEditor open: #artifacts for: objects]