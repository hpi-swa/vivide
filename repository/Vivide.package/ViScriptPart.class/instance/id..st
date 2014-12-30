accessing
id: object

	^ object
		ifNil: [super id: UUID new asString asSymbol]
		ifNotNil: [:o | super id: o].