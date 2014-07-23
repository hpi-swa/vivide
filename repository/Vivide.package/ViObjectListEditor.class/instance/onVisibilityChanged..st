geometry - callbacks
onVisibilityChanged: event

	event shiftPressed
		ifFalse: [super onVisibilityChanged: event]
		ifTrue: [
			self inputPage isVisible ifTrue: [
				(self inputPage artifactContainers anySatisfy: [:c | c isExpanded])
					ifTrue: [self inputPage collapseAllArtifacts]
					ifFalse: [self inputPage expandAllArtifacts]]].