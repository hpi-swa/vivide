accessing
objects: someObjects
	
	self model firstStep objects: someObjects.
				
	self currentQuery: (self appropriateQueries
		ifEmpty: [nil]
		ifNotEmpty: [:aqueries | aqueries first]).
	
	self objectsChanged: self objects.