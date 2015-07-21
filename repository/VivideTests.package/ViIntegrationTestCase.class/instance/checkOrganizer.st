support
checkOrganizer
	"Just some recurring checks whether the organizer is setup correctly for all tests."
	
	self assert: ViProfile active organization == ViActiveOrganizer value.