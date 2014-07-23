as yet unclassified
projectsForUser: username

	^ (self class get: '/projects/', username) ifNil: [#()]