accessing
autoCreateArtifacts

	^ autoCreateArtifacts ifNil: [autoCreateArtifacts := false]