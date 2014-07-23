events
grabKeyboard

	self hasKeyboard ifTrue: [^ self].
	self artifactContainers ifNotEmpty: [:s | s first grabKeyboard].