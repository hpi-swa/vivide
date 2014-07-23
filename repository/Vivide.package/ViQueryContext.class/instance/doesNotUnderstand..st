error handling
doesNotUnderstand: aMessage
	"Invisible proxy."

	^ contents
		ifNil: [super doesNotUnderstand: aMessage]
		ifNotNil: [:obj | aMessage sendTo: obj]