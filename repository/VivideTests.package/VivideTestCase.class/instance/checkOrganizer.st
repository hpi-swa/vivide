support
checkOrganizer
	"Just some recurring checks whether the organizer is setup correctly for all tests."
	
	self
		assert: organization equals: ViScriptOrganizer active;
		assert: organization equals: ViProfile active organization.