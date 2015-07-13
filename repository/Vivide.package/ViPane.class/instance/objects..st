accessing
objects: someObjects
	
	self model firstStep objects: someObjects.
	
	self currentQuery: (self appropriateQueries
		ifEmpty: [self createIdentityScript]
		ifNotEmpty: [:aqueries | aqueries
			detect: [:q | (q valueOfProperty: #isNew ifAbsent: [false]) not]
			ifNone: [aqueries first]]).
	
	self objectsChanged: self objects.