as yet unclassified
mergeProfile

	self assert: archive notNil.
	
	profile ifNil: [
		"Find existing profile automatically. Create a new one if needed."	
		VivideLight profiles
			detect: [:p | p id = archive theNonMetaClass id]
			ifFound: [:p | profile := p]
			ifNone: [
				Transcript showln: '[ViQuerySerializer] Creating new profile...'.
				profile := ViProfile newEmpty.
				"profile initializeMinimal."
				
				VivideLight profiles add: profile.
				profile archive: archive theNonMetaClass.
				profile id: archive theNonMetaClass id]].

	self
		setOrganizer: profile organization
		archive: archive theNonMetaClass.

	profile label: archive theNonMetaClass label.
	
	(archive theNonMetaClass respondsTo: #defaultView)
		ifTrue: [profile defaultView: (archive theNonMetaClass perform: #defaultView)].