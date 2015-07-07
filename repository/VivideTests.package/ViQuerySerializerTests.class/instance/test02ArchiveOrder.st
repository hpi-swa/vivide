tests
test02ArchiveOrder

	| q1 q2 |
	q1 := {[:morph | morph submorphs] -> {#priority -> 10}} asScript.
	q1
		adoptOrganization: organizer;
		id: #b.
	q1 definition id: #z.
	
	q2 := {[:ea | ea * ea] -> {#priority -> 20}} asScript.
	q2
		adoptOrganization: organizer;
		id: #a.
	q2 definition id: #x.
	
	self
		assert: ({q1.q2} hasEqualElements: organizer orderedSteps);
		assert: ({q1 definition.q2 definition} includesAllOf: organizer orderedDefinitions).
	
	self serialize; merge.
	
	self assert: (organizer orderedSteps hasEqualElements: newOrganizer orderedSteps).