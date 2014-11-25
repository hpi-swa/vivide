couch db
addDocument: dictionary

	^ self
		addDocument: dictionary
		id: (UUID new asString copyWithoutAll: '-')