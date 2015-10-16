actions - results
selectResults: someNodes

	| objects |
	someNodes ifEmpty: [^ self].
	
	objects := someNodes collect: [:node | node at: #object].
	
	self flag: #hacky.
	objects do: [:object |
		(object isKindOf: ViLocatorOperation) ifTrue: [
			self
				theText: (object shortcut), ' ';
				select: (self theText size + 1 to: self theText size);
				grabKeyboard.
			^ self]].

	self hideResults.
	VivideLight active openArtifacts: objects.