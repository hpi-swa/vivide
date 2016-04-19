as yet unclassified
archive

	"Fast path."
	ViProfile active organization = self organization
		ifTrue: [^ ViProfile active archive].

	^ VivideLight profiles
		detect: [:profile | profile organization = self organization]
		ifFound: [:profile | profile archive]
		ifNone: [ViScriptArchive localArchive]