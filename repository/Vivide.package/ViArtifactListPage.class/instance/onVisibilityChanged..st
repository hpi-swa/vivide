geometry - callbacks
onVisibilityChanged: event

	event shiftPressed
		ifFalse: [super onVisibilityChanged: event]
		ifTrue: [
			(self artifactContainers anySatisfy: [:c | c isExpanded])
				ifTrue: [self collapseAllArtifacts]
				ifFalse: [self expandAllArtifacts]].