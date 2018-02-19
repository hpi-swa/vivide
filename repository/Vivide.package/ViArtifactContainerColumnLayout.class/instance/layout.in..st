layout
layout: anArtifactContainerColumn in: newBounds

	| offset lastGroup |
	offset := anArtifactContainerColumn topLeft.
	lastGroup := nil.
	anArtifactContainerColumn artifactContainers do: [:container | 		
		container
			width: anArtifactContainerColumn width;
			topLeft: offset + (0@ ((lastGroup = container group or: [container group isNil])
				ifTrue: [0]
				ifFalse: [Preferences standardButtonFont height])).
		container fullBounds.
		
		container group ifNotNil: [
			lastGroup := container group].
		
		offset := offset x @ container bounds bottom].
	
	anArtifactContainerColumn submorphs last ifNotNil: [:dropShadow |
		dropShadow
			width: anArtifactContainerColumn width;
			topLeft: offset.
		dropShadow fullBounds.
		offset := offset x @ dropShadow bounds bottom].
	
	anArtifactContainerColumn height: offset y - anArtifactContainerColumn top.