as yet unclassified
archive

	^ VivideLight profiles
		detect: [:profile | profile organization = self organization]
		ifFound: [:profile | profile archive]
		ifNone: [ViProfile localArchive]