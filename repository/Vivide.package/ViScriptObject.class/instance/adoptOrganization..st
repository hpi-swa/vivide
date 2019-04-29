organization
adoptOrganization: aQueryOrganizer

	self isDefault ifTrue: [^ self "no change"].

	self
		unregister;
		organization: aQueryOrganizer;
		register.