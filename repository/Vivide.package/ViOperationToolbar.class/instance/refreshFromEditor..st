initialization
refreshFromEditor: anArtifactEditor

	self groups do: [:assoc |
		| model |
		model := assoc value.
		model refreshOperationsFromEditor: anArtifactEditor].