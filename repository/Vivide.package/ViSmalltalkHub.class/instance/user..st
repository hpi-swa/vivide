as yet unclassified
user: name

	users ifNil: [self users].
	^ (users at: name) ifNil: [
		(self class get: '/users/', name) ifNotNil: [:user |
			users at: name put: user.
			^ user]]