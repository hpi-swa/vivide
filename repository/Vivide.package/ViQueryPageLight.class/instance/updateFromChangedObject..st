updating
updateFromChangedObject: evt

	(self objects anySatisfy: [:obj | obj == evt item]) ifTrue: [
		self queryModel updateChildren.
		self objectSelectionChanged: self selectedResults].