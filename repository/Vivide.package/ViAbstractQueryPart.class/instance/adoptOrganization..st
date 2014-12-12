as yet unclassified
adoptOrganization: aQueryOrganizer

	organization ifNil: [^ self "keep it"].

	self organization = aQueryOrganizer
		ifTrue: [^ self "no change"].

	aQueryOrganizer = ViQueryOrganizer default
		ifTrue: [^ self].

	self
		unregister;
		organization: aQueryOrganizer;
		register.