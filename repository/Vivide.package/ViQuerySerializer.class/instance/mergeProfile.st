as yet unclassified
mergeProfile

	self assert: archive notNil.
	
	VivideLight profiles
		detect: [:p | p id = archive theNonMetaClass id]
		ifFound: [:p | profile := p]
		ifNone: [
			profile ifNotNil: [
				Error signal: 'Profile not found!'].
			
			profile := ViProfile newMinimal.
			VivideLight profiles add: profile.
			profile archive: archive.
			profile id: archive theNonMetaClass id].

	organizer := profile organization.

	profile label: archive theNonMetaClass label.