tests
test04ArchiveReference

	| script reference |
	script := [:number | number * 2] asScript.
	script id: #test04ArchiveReference.
	reference := script asReference.
	reference id: #test04ArchiveReferenceId.
	
	self assert: 0 equals: organizer orderedSteps size.
	script adoptOrganization: organizer.
	self assert: 1 equals: organizer orderedSteps size.
	reference adoptOrganization: organizer.
	self assert: 2 equals: organizer orderedSteps size.
	
	self serialize.
	self assert: 2 equals: organizer orderedSteps size.

	self merge.

	self assert: 2 equals: newOrganizer orderedSteps size.
	self assert: (newOrganizer stepById: reference id) reference == (newOrganizer stepById: script id).