as yet unclassified
openProfileById: aProfileId

	self profiles
		detect: [:profile | profile id = aProfileId]
		ifFound: [:profile | self openProfile: profile]
		ifNone: [Error signal: 'There is no such profile!'].