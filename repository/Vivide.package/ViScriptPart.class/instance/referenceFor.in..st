as yet unclassified
referenceFor: someObjects in: anOrganization

	^ (self process: someObjects)
		ifEmpty: [nil]
		ifNotEmpty: [:someIds | anOrganization stepById: someIds first]