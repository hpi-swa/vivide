as yet unclassified
archive

	"Fast path."
	ViProfile active ifNotNil: [:profile |
		profile organization = self organization
			ifTrue: [^ profile archive]].

	^ VivideLight profiles
		detect: [:profile | profile organization = self organization]
		ifFound: [:profile | profile archive]
		ifNone: [ViScriptArchive localArchive]