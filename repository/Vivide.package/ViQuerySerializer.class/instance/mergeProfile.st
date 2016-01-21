as yet unclassified
mergeProfile

	self assert: archive notNil.
	
	profile ifNil: [
		"Find existing profile automatically. Create a new one if needed."	
		archive theNonMetaClass profile
			ifNotNil: [:p | profile := p]
			ifNil: [
				Transcript showln: '[ViQuerySerializer] Creating new profile...'.
				profile := ViProfile newEmpty.
				"profile initializeMinimal."
				
				VivideLight profiles add: profile.
				profile archive: archive theNonMetaClass.
				(archive theNonMetaClass respondsTo: #id)
					ifTrue: [profile id: archive theNonMetaClass id]]].

	self
		setOrganizer: profile organization
		archive: archive theNonMetaClass.

	(archive theNonMetaClass respondsTo: #label)
		ifTrue: [profile label: archive theNonMetaClass label].
	
	(archive theNonMetaClass respondsTo: #defaultView)
		ifTrue: [profile defaultView: (archive theNonMetaClass perform: #defaultView)].