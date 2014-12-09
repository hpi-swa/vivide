as yet unclassified
test39DefaultOrganization
	"Never store reference to default organizer in instance!"
	
	sut := ViQueryStep new.
	self assert: sut organization == ViQueryOrganizer default.
	self assert: (sut instVarNamed: #organization) isNil.
	
	sut organization: ViQueryOrganizer default.  
	self assert: (sut instVarNamed: #organization) isNil.
	
	sut organization: ViQueryOrganizer new.
	self deny: (sut instVarNamed: #organization) isNil.
	
	sut organization: nil.
	self assert: sut organization == ViQueryOrganizer default.
	self assert: (sut instVarNamed: #organization) isNil.