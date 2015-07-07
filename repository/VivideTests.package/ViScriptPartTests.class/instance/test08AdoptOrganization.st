tests
test08AdoptOrganization

	| organizer |
	organizer := ViQueryOrganizer new.

	self assert: 0 equals: organizer orderedSteps size.
	self assert: 0 equals: organizer orderedDefinitions size.

	{[:object | object] -> {#id -> #test08AdoptOrganization}} asScript
		adoptOrganization: organizer.

	self assert: 1 equals: organizer orderedSteps size.
	self assert: 1 equals: organizer orderedDefinitions size.