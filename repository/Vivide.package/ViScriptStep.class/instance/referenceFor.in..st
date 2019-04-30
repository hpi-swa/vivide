as yet unclassified
referenceFor: someObjects in: anOrganization

	^ (self process: someObjects)
		ifEmpty: [nil]
		ifNotEmpty: [:someIds | 
			ViScriptTemplate
				lookupSymbol: someIds first
				startingAt: anOrganization]