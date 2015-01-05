as yet unclassified
adoptOrganization: aQueryOrganizer

	self organization = aQueryOrganizer
		ifTrue: [^ self "no change"].

	super adoptOrganization: aQueryOrganizer.

	self next ifNotNil: [:step |
		step adoptOrganization: aQueryOrganizer].    