as yet unclassified
isDefault
	"Default scripts are stored in one global organization and must not be changed to keep Vivide functional."
	
	^ self organization = ViProfile active organization and: [self isRegistered]