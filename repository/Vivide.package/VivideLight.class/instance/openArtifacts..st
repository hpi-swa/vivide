actions - open
openArtifacts: someObjects

	| objects |
	someObjects size = 1
		ifTrue: [^ self openArtifact: someObjects first].
	
	self flag: #evaluate. "mt: Unwrap name bindings."
	objects := (self currentEvent in: [:evt | evt isDropEvent and: [evt contents hasFlag: #evaluate]])
		ifTrue: [someObjects collect: [:o | o value]] ifFalse: [someObjects].
	
	^ VivideLight useClassicMode
		ifTrue: [self chooseScriptFor: objects]
		ifFalse: [ViSinglePaneEditor open: #artifacts for: objects]