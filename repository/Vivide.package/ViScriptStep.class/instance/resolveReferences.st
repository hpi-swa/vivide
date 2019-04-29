serialization
resolveReferences

	self
		setNext: ((self organization stepById: self next) ifNil: [self next ifNotNil: [:id |
			Transcript cr; show: ('[Error] Could not resolve next step {1} for {2}!' format: {id. self id}). id]]);
		setDefinition: ((self organization definitionById: self definition) ifNil: [self definition ifNotNil: [:id |
			Transcript cr; show: ('[Error] Could not resolve definition {1} for {2}!' format: {id. self id}). id]])