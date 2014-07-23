initialization
refreshFromEditor: anArtifactEditor

"	secondaryList dragDropSpec source: (self operationContext cull: anArtifactEditor)."

	self groups do: [:assoc | | model |
		model := assoc value.

		model contents ifNotNil: [:contents |
			model
				removeAllObjects;
				addOperations: (contents cull: anArtifactEditor)]].