accessing - objects
objects: someObjects
	
	self currentQuery in: [:oldQuery |
		self queryModel firstStep objects: someObjects.
		
		self updateQueryCommandsFor: someObjects.
		
		"Could change the current query..."
		self objects ifNotEmpty: [:objs |
			self updateQueryListFor: objs].
		
		"...otherwise update contents now."
		oldQuery == self currentQuery
			ifTrue: [self queryModel updateChildren]].