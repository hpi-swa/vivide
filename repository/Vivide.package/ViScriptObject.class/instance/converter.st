serialization
converter

	"Fast path."
	ViProfile active ifNotNil: [:profile |
		profile organization = self organization
			ifTrue: [^ profile converter]].

	^ VivideLight profiles
		detect: [:profile | profile organization = self organization]
		ifFound: [:profile | profile converter]
		ifNone: [ViConverter default "for local script archive"]