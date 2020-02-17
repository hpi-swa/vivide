tests - categories
test01Category

	| step |
	step := [:ea | ea * ea] asScript.
	step adoptOrganization: organization.
		
	self assert: #() equals: (organization categoryOfElement: step).
	organization classify: step under: #test.
	self assert: #(test) equals: (organization categoryOfElement: step).
	organization classify: step under: nil. "Remove category."
	self assert: #() equals: (organization categoryOfElement: step).