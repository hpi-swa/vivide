actions - open
openArtifacts: someObjects

	| objects |
	someObjects size = 1
		ifTrue: [^ self openArtifact: someObjects first].
	
	objects := someObjects.
	
	self flag: #flatten. "mt: Avoid tuple treatment."
	objects := (self currentEvent in: [:evt | evt isDropEvent and: [evt contents hasFlag: #flatten]])
		ifTrue: [objects gather: [:o | o asList]] ifFalse: [objects].

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