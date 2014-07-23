actions - open
openArtifacts: someObjects

	someObjects size = 1
		ifTrue: [^ self openArtifact: someObjects first].
	
	self flag: #evaluate. "mt: Unwrap name bindings."
	^ ViMultiPaneEditor open: #artifacts for:
		 ((self currentEvent in: [:evt | evt isDropEvent and: [evt contents shouldCopy]])
			ifTrue: [someObjects collect: [:o | o value]] ifFalse: [someObjects])