as yet unclassified
referenceFor: someObjects in: anOrganization

	^ (self process: someObjects)
		ifEmpty: [nil]
		ifNotEmpty: [:someIds | 
			self flag: #duplication. "mt: See ViQueryStep class >> #convert:. Why not use id asScript ??"
			anOrganization ifNotNil: [:o | o stepById: someIds first]]