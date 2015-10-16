fallback
do: block

	block receiver
		ifNil: [super do: block]
		ifNotNil: [self asList do: block].