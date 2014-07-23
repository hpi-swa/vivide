pane api
selectedNodes

	^ self nodesForObjects: {(self focusedArtifact ifNil: [^ #()]) object}