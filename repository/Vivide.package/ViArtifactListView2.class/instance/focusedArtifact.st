accessing
focusedArtifact

	^ self artifactContainers detect: [:a | a hasKeyboard] ifNone: []