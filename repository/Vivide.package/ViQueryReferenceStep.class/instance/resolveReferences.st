serialization
resolveReferences

	super resolveReferences.
	self reference: ((self organization stepById: self reference) ifNil: [self reference ifNotNil: [:id |
		Transcript cr; show: ('[Error] Could not resolve referenced step {1} for {2}!' format: {id. self id}). id]])