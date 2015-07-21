accessing
objects: someObjects
	
	self model firstStep objects: someObjects.
				
	self currentQuery: (self appropriateQueries
		ifEmpty: [self createIdentityScript]
		ifNotEmpty: [:aqueries | aqueries first]).
	
	self objectsChanged: self objects.