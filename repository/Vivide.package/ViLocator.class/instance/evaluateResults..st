actions - results
evaluateResults: nodes

	| objects |
	objects := nodes collect: [:node |
		| object |
		object := 	node at: #object.

		self flag: #hacky.
		((object isKindOf: ViEditorState)
			ifFalse: [object]
			ifTrue: [object properties at: #object ifAbsent: [object]])
				value].
		
	self hideResults.
	VivideLight active openArtifacts: objects.