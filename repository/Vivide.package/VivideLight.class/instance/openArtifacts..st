actions - open
openArtifacts: someObjects

	| objects |
	someObjects size = 1
		ifTrue: [^ self openArtifact: someObjects first].
		
	(someObjects detect: [:obj | obj isKindOf: ViScriptPart] ifNone: [])
		ifNotNil: [:script | (script steps hasEqualElements: someObjects)
			ifFalse: [
				"Assume mixed scripts. Avoid to open them in one window to not destroy them."
				someObjects do: [:obj | self openArtifact: obj].
				^ self]].
	
	self flag: #evaluate. "mt: Unwrap name bindings."
	objects := (self currentEvent in: [:evt | evt isDropEvent and: [evt contents hasFlag: #evaluate]])
		ifTrue: [someObjects collect: [:o | o value]] ifFalse: [someObjects].
	
	^ VivideLight useClassicMode
		ifTrue: [self chooseScriptFor: objects]
		ifFalse: [ViSinglePaneEditor open: #artifacts for: objects]