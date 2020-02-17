tests
test03SerializeAndMerge

	| profile archive backup |
	profile := ViProfile newMinimal.
	archive := profile converter theClass.
	profile export.

	backup := ViProfile newEmpty.
	backup id: profile id.
	(ViConverterForClassArchive fromClass: archive intoProfile: backup)
		import.
	
	self
		assert: profile organization orderedSteps size
		equals: backup organization orderedSteps size.

	archive removeFromSystem: false.