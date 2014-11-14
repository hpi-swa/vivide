tests
test13Organization

	| q orga |
	orga := ViQueryOrganizer new.
	q := [:method | method methodReference] asScript.
	q
		id: #test13Organization;
		organization: orga.
	q definition
		id: #test13Organization;
		organization: orga.
	self
		assert: (orga stepById: #test13Organization) isNil;
		assert: (orga definitionById: #test13Organization) isNil.
	
	q register.
	self
		assert: (orga stepById: #test13Organization) == q;
		assert: (orga definitionById: #test13Organization) isNil.
	
	q id: #test13OrganizationChanged.
	self
		assert: (orga stepById: #test13Organization) isNil;
		assert: (orga stepById: #test13OrganizationChanged) == q.
	
	q unregister.
	self
		assert: (orga stepById: #test13OrganizationChanged) isNil;
		assert: (orga definitionById: #test13Organization) isNil.