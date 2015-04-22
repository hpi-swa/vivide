as yet unclassified
mergeProfile

	self assert: archive notNil.
	
	VivideLight profiles
		detect: [:p | p id = archive theNonMetaClass id]
		ifFound: [:p | profile := p]
		ifNone: [
			profile ifNotNil: [
				Error signal: 'Profile not found!'].
			
			profile := ViProfile newEmpty.
			"profile initializeMinimal."
			
			VivideLight profiles add: profile.
			profile archive: archive theNonMetaClass.
			profile id: archive theNonMetaClass id].

	self
		setOrganizer: profile organization
		archive: archive theNonMetaClass.

	profile label: archive theNonMetaClass label.