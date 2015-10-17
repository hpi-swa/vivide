actions - focus
onFocusChanged: globalRect

	(self hasProperty: #isUpdatingAllArtifacts) ifTrue: [^ self].
	scrollArea scrollToShowGlobal: globalRect.