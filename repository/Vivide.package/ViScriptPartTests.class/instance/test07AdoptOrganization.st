tests
test07AdoptOrganization
	
	| script organizer |
	script := {
		[:number | number * 2].
		[:number | number + 7].
		[:result | #text -> result printString]} asScript.
	organizer := ViQueryOrganizer new.
	
	script adoptOrganization: organizer.
	self assert: 3 equals: organizer orderedSteps size.
	self assert: 3 equals: organizer orderedDefinitions size.