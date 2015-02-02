as yet unclassified
isDefault
	"Default scripts are stored in one global organization and must not be changed to keep Vivide functional."
	
	^ ViQueryOrganizer active
		ifNil: [true]
		ifNotNil: [:o | self organization = o and: [self isRegistered]]