serialization
resolveReferences

	self
		definition: ((self organization definitionById: self definition) ifNil: [self definition ifNotNil: [:id |
			Transcript cr; show: ('[Error] Could not resolve definition {1} for {2}!' format: {id. self id}). nil]])