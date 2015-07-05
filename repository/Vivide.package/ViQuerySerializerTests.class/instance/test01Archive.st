tests
test01Archive

	| q q2 |
	q := {
		[:morph | morph submorphs].
		[:morph | #text -> morph printString]} asScript.
	q adoptOrganization: organizer.
	
	q id: #test01Archive.
	
	self
		assert: (self archive class organization listAtCategoryNamed: 'steps') isEmpty;
		assert: (self archive class organization listAtCategoryNamed: 'definitions') isEmpty.
	
	self serialize.

	self
		assert: 2 equals: (self archive class organization listAtCategoryNamed: 'steps') size;
		assert: 2 equals: (self archive class organization listAtCategoryNamed: 'definitions') size.
	
	self merge.
	
	q2 := newOrganizer stepById: q id.
	
	self
		assert: q2 ~~ q;
		assert: q2 definition ~~ q definition;
		assert: q2 properties = q properties;
		assert: q2 sourceCode = q sourceCode;
		assert: (q2 definition isKindOf: q definition class).