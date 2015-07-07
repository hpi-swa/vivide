tests
test07Order

	| q1 q2 |
	q1 := {[:ea | ea * ea] -> {#priority -> 50}} asScript.
	q2 := {[:morph | morph submorphs] -> {#priority -> 10}} asScript.
	
	q1 adoptOrganization: sut.
	q2 adoptOrganization: sut.
	
	self
		assert: sut orderedSteps first == q2;
		assert: sut orderedSteps second == q1.