actions - focus
passKeyboardFocusDown

	| oldEditor newEditor methodEditors |	
	self artifactContainers last hasAnyKeyboard
		ifTrue: [self artifactContainerColumn appendCodeSnippet].

	methodEditors := self artifactContainers.
	oldEditor := self focusedArtifact.

	newEditor := (methodEditors at: (
		(methodEditors indexOf: oldEditor)
		+ 1 min: methodEditors size)).

	self passKeyboardFocusTo: newEditor.