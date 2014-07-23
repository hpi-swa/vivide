actions
openArtifact: anObject

	(self focusedTape ifNil: [self addTape. self tapes last])
		openArtifact: anObject.