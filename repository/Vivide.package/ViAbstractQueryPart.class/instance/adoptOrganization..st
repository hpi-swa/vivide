as yet unclassified
adoptOrganization: aQueryOrganizer

	self organization = aQueryOrganizer
		ifTrue: [^ self "no change"].

	self
		unregister;
		organization: aQueryOrganizer;
		register.