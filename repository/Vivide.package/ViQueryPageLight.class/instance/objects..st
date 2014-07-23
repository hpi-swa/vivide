accessing - objects
objects: someObjects
	
	self currentQuery in: [:oldQuery |
		self queryModel firstStep objects: someObjects.
				
		"Could change the current query..."
		self updateCurrentQueryFor: self objects.
		
		"...otherwise update contents now."
		(oldQuery == self currentQuery and: [self currentQuery notNil])
			ifTrue: [self queryModel updateChildren]].