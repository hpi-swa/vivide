actions - open
openArtifacts: someObjects

	| objects |
	someObjects size = 1
		ifTrue: [^ self openArtifact: someObjects first].
	
	objects := someObjects.
		
	self flag: #evaluate. "mt: Unwrap name bindings."
	objects := (self currentEvent in: [:evt | evt isDropEvent and: [evt contents hasFlag: #evaluate]])
		ifTrue: [objects collect: [:o | o value]] ifFalse: [objects].

	"Open a script editor?"
	(objects detect: [:obj | obj isScript] ifNone: [])
		ifNotNil: [:script | 
			script retain.
			^ script editScriptWith: (objects copyWithoutAll: script steps)].

	^ VivideLight useClassicMode
		ifTrue: [ViPane chooseAndOpenScriptWith: objects]
		ifFalse: [self openScript: #artifacts withObjects: objects]