tests
test07Order

	| q1 q2 |
	q1 := (ViQueryStep collect: '[:ea | ea * ea]')
		organization: sut;
		register.
	q2 := (ViQueryStep collect: '[:morph | morph submorphs]')
		organization: sut;
		register.
	self
		assert: sut orderedSteps first == q1;
		assert: sut orderedSteps second == q2.
		
	q2 definition organization: sut; register.
	q1 definition organization: sut; register.
	self
		assert: sut orderedDefinitions first == q2 definition;
		assert: sut orderedDefinitions second == q1 definition.