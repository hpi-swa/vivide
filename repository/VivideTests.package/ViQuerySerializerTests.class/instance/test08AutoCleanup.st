tests
test08AutoCleanup
	"Serializer will remove unused scripts."
	
	| script |
	script := [:number | number * 2] asScript.
	
	script adoptOrganization: organizer.
	self assert: 1 equals: organizer orderedSteps size.
	self assert: 1 equals: organizer orderedDefinitions size.
	
	self serialize.
	self assert: 0 equals: organizer orderedSteps size.
	self assert: 0 equals: organizer orderedDefinitions size.