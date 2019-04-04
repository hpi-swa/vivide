accessing
objects: someObjects

	(VivideLight animateDataflow and: [self isInWorld]) ifTrue: [
		self showFlash.
		(Delay forMilliseconds: 200) wait].

	self model inputForChildren: someObjects.
				
	self currentQuery: (self appropriateQueries
		ifEmpty: [self createIdentityScript]
		ifNotEmpty: [:aqueries | aqueries first]).
		
	self owner class == ViSinglePaneEditor
		ifTrue: [self objectsChanged: self objects].