dropping/grabbing
acceptObjects: someObjects fromEditor: anEditor event: evt

	self assert: evt isDropEvent.
	
	self flag: #evaluate. "mt: Unwrap name bindings."
	((evt contents hasFlag: #evaluate) ifTrue: [someObjects collect: [:o | o value]] ifFalse: [someObjects])
		collect: [:o | (ViArtifactLookupService new doObject: o) -> o]
		thenDo: [:config | self dropEditor: (config key new object: config value) event: evt].