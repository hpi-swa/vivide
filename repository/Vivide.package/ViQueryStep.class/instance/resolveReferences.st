serialization
resolveReferences

	self
		next: ((self organization stepById: self next) ifNil: [self next ifNotNil: [:id |
			Transcript cr; show: ('[Error] Could not resolve next step {1} for {2}!' format: {id. self id}). nil]]);
		definition: ((self organization definitionById: self definition) ifNil: [self definition ifNotNil: [:id |
			Transcript cr; show: ('[Error] Could not resolve definition {1} for {2}!' format: {id. self id}). nil]]);
		viewDefinition: ((self organization definitionById: self viewDefinition) ifNil: [self viewDefinition ifNotNil: [:id |
			Transcript cr; show: ('[Error] Could not resolve view definition {1} for {2}!' format: {id. self id}). nil]])