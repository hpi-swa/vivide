as yet unclassified
adoptOrganization: aQueryOrganizer

	organization ifNil: [^ self "keep it"].

	self organization = aQueryOrganizer
		ifTrue: [^ self "no change"].

	self
		unregister;
		organization: aQueryOrganizer;
		register.