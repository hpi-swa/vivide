as yet unclassified
openProfileByLabel: aProfileLabel

	self profiles
		detect: [:profile | profile label = aProfileLabel]
		ifFound: [:profile | self openProfile: profile]
		ifNone: [Error signal: 'There is no such profile!'].