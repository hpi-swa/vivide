operations
doObject: anObject

	self flag: #refactor. "mt: looks ugly..."
	^ (super doObject: anObject) ifNil: [
		"Look through extension points."
		ViArtifactContainer allSubclasses do: [:cls |
			cls supportedTypes do: [:artifactType |
				anObject class == artifactType
					ifTrue: [^ cls]]].
		"Fallback."
		^ ViObjectEditor]