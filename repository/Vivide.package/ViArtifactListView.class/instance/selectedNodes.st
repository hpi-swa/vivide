as yet unclassified
selectedNodes

	^ Dictionary newFrom: {#object -> (self focusedArtifact ifNil: [^ #()]) object}