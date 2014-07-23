as yet unclassified
users

	users ifNil: [
		users := Dictionary new.
		(self class get: '/users?term=.*') ifNotNil: [:usernames |
			usernames do: [:nm | users at: nm put: nil]]].
	^ users keys