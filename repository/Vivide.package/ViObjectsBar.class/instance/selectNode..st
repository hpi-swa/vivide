actions
selectNode: aNode

	aNode ifNil: [^ self].
	
	self artifactRequested: (aNode at: #object).