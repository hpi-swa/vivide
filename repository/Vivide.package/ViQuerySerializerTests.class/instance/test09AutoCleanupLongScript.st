tests
test09AutoCleanupLongScript
	"Serializer will remove unused scripts."
	
	| script |
	script := {
		[:number | number * 2].
		[:number | number + 7].
		[:result | #text -> result printString]} asScript.
	
	script adoptOrganization: organizer.
	self assert: 3 equals: organizer orderedSteps size.
	self assert: 3 equals: organizer orderedDefinitions size.
	
	self serialize.
	self assert: 0 equals: organizer orderedSteps size.
	self assert: 0 equals: organizer orderedDefinitions size.