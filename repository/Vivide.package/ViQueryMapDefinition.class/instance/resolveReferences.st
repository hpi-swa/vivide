serialization
resolveReferences

	super resolveReferences.
	
	self
		updateSetDefinition: ((self organization definitionById: self updateSetDefinition) ifNil: [self updateSetDefinition ifNotNil: [:id |
			Transcript cr; show: ('[Error] Could not resolve update-set definition {1} for {2}!' format: {id. self id}). nil]]);
		updateClearDefinition: ((self organization definitionById: self updateClearDefinition) ifNil: [self updateClearDefinition ifNotNil: [:id |
			Transcript cr; show: ('[Error] Could not resolve update-clear definition {1} for {2}!' format: {id. self id}). nil]])