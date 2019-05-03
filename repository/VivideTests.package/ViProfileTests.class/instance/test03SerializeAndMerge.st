tests
test03SerializeAndMerge

	| profile archive backup |
	profile := ViProfile newMinimal.
	archive := profile archive.
	profile serializeIntoArchive.

	backup := ViProfile newEmpty.
	(ViQuerySerializer fromArchive: archive intoOrganizer: backup organization)
		merge.
	
	self
		assert: profile organization orderedSteps size
		equals: backup organization orderedSteps size.

	archive removeFromSystem: false.