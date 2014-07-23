accessing
focusedArtifact

	^ self artifactContainers detect: [:a | a hasAnyKeyboard] ifNone: []